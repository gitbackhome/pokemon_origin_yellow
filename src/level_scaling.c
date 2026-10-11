#include "global.h"
#include "level_scaling.h"
#include "data.h"
#include "overworld.h"
#include "pokemon.h"
#include "random.h"
#include "event_data.h"
#include "constants/region_map_sections.h"
#include "constants/trainers.h"
#include "config/hoenn_scaling.h"
#include "config/johto_scaling.h"

// =====================================================================
// Level scaling - implementation of the rule files config/hoenn_scaling.h
// and config/johto_scaling.h. Anchor = highest level in the player's
// party; trainers scale around the anchor (team structure is kept), wild
// Pokemon sit below it; one corridor per map section preserves the
// region's level gradient.
//
// Two regions, one calculation - they only differ in their constants and
// their corridor table:
//   Hoenn: region via IsHoennMapsec (contiguous mapsec block); areas
//          without a corridor entry use the default values.
//   Johto: region via the corridor table itself - Johto's map sections
//          share the number range with Kanto's, and Kanto is meant to keep
//          its hand-set level curve. Whatever is not in the table is
//          therefore not scaled at all.
// =====================================================================

// Pure geography: also used by the region map, location names, HM
// licenses and sprites, and therefore independent of the scaling switches.
#if defined(POKEMON_HNS)

// TRUE if the map section belongs to Hoenn.
bool32 IsHoennMapsec(u32 mapSecId)
{
    // Contiguous Hoenn block of the HnS map section list ...
    if (mapSecId >= MAPSEC_LITTLEROOT_TOWN && mapSecId < MAPSEC_NONE)
        return TRUE;
    // ... plus the sections Hoenn shares with the Johto/Kanto number range
    // (no active _hns user, or only placeholder maps): Victory Road, Safari
    // Zone, Abandoned Ship and Lilycove City. Origin Jade: Lilycove was
    // missing (its HnS number is 5); after the first Johto visit its maps
    // fell back to the Johto/Kanto map table, where it has no entry - blank
    // names, a zero width on the region map, no Hoenn scaling or licenses.
    if (mapSecId == MAPSEC_VICTORY_ROAD
     || mapSecId == MAPSEC_SAFARI_ZONE
     || mapSecId == MAPSEC_ABANDONED_SHIP
     || mapSecId == MAPSEC_LILYCOVE_CITY)
        return TRUE;
    return FALSE;
}

#else

bool32 IsHoennMapsec(u32 mapSecId)
{
    return FALSE;
}

#endif

#if defined(POKEMON_HNS) && (HOENN_LEVEL_SCALING == TRUE || JOHTO_LEVEL_SCALING == TRUE)

struct ScalingCorridor
{
    u16 mapsec;
    u8 floor;
    u8 ceiling;
};

struct ScalingRules
{
    const struct ScalingCorridor *corridors;
    u16 corridorCount;
    u8 trainerBelow;
    u8 trainerAbove;
    u8 wildBelow;
    u8 wildAbove;
    u8 bossExtra;
    u8 fixedMinLevel;
    u8 evoOtherLevel;
    u8 minLevel;
    u8 maxLevel;
    u8 defaultFloor;
    u8 defaultCeiling;
    bool8 trainerEvolve;
    // TRUE: the corridor table defines the region (Johto).
    // FALSE: the region depends on IsHoennMapsec, areas without an entry
    // use the default values (Hoenn).
    bool8 corridorListIsRegion;
};

#if HOENN_LEVEL_SCALING == TRUE
static const struct ScalingCorridor sHoennCorridors[] =
{
    HOENN_SCALING_CORRIDORS
};

static const struct ScalingRules sHoennRules =
{
    .corridors           = sHoennCorridors,
    .corridorCount       = ARRAY_COUNT(sHoennCorridors),
    .trainerBelow        = HOENN_SCALING_TRAINER_BELOW,
    .trainerAbove        = HOENN_SCALING_TRAINER_ABOVE,
    .wildBelow           = HOENN_SCALING_WILD_BELOW,
    .wildAbove           = HOENN_SCALING_WILD_ABOVE,
    .bossExtra           = HOENN_SCALING_BOSS_EXTRA,
    .fixedMinLevel       = HOENN_SCALING_FIXED_MIN_LEVEL,
    .evoOtherLevel       = HOENN_SCALING_EVO_OTHER_LEVEL,
    .minLevel            = HOENN_SCALING_MIN_LEVEL,
    .maxLevel            = HOENN_SCALING_MAX_LEVEL,
    .defaultFloor        = HOENN_SCALING_DEFAULT_FLOOR,
    .defaultCeiling      = HOENN_SCALING_DEFAULT_CEILING,
    .trainerEvolve       = HOENN_SCALING_TRAINER_EVOLVE,
    .corridorListIsRegion = FALSE,
};
#endif

#if JOHTO_LEVEL_SCALING == TRUE
static const struct ScalingCorridor sJohtoCorridors[] =
{
    JOHTO_SCALING_CORRIDORS
};

static const struct ScalingRules sJohtoRules =
{
    .corridors           = sJohtoCorridors,
    .corridorCount       = ARRAY_COUNT(sJohtoCorridors),
    .trainerBelow        = JOHTO_SCALING_TRAINER_BELOW,
    .trainerAbove        = JOHTO_SCALING_TRAINER_ABOVE,
    .wildBelow           = JOHTO_SCALING_WILD_BELOW,
    .wildAbove           = JOHTO_SCALING_WILD_ABOVE,
    .bossExtra           = JOHTO_SCALING_BOSS_EXTRA,
    .fixedMinLevel       = JOHTO_SCALING_FIXED_MIN_LEVEL,
    .evoOtherLevel       = JOHTO_SCALING_EVO_OTHER_LEVEL,
    .minLevel            = JOHTO_SCALING_MIN_LEVEL,
    .maxLevel            = JOHTO_SCALING_MAX_LEVEL,
    .defaultFloor        = JOHTO_SCALING_DEFAULT_FLOOR,
    .defaultCeiling      = JOHTO_SCALING_DEFAULT_CEILING,
    .trainerEvolve       = JOHTO_SCALING_TRAINER_EVOLVE,
    .corridorListIsRegion = TRUE,
};
#endif

// Looks up the corridor of a map section. Returns FALSE (and leaves
// floor/ceiling untouched) if the table has no entry for it.
static bool32 FindCorridor(const struct ScalingRules *rules, u16 mapsec, u8 *floor, u8 *ceiling)
{
    u32 i;

    for (i = 0; i < rules->corridorCount; i++)
    {
        if (rules->corridors[i].mapsec == mapsec)
        {
            if (floor != NULL)
                *floor = rules->corridors[i].floor;
            if (ceiling != NULL)
                *ceiling = rules->corridors[i].ceiling;
            return TRUE;
        }
    }
    return FALSE;
}

// Which rule set applies on the current map? NULL = no scaling.
static const struct ScalingRules *GetScalingRules(void)
{
    u16 mapsec = gMapHeader.regionMapSectionId;

#if JOHTO_LEVEL_SCALING == TRUE
    // Johto first: MAPSEC_INDIGO_PLATEAU holds Johto's league but lies in
    // the Kanto block of the mapsec list.
    if (FindCorridor(&sJohtoRules, mapsec, NULL, NULL))
        return &sJohtoRules;
#endif
#if HOENN_LEVEL_SCALING == TRUE
    if (IsHoennMapsec(mapsec))
        return &sHoennRules;
#endif
    return NULL;
}

// TRUE if level scaling applies on the current map.
bool32 LevelScalingActive(void)
{
    return GetScalingRules() != NULL;
}

// Scaling anchor: the highest level among the non-egg party members
// (0 if there are none).
static u8 GetScalingAnchor(void)
{
    u32 i;
    u8 best = 0;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES, NULL) == SPECIES_NONE)
            continue;
        if (GetMonData(&gPlayerParty[i], MON_DATA_IS_EGG, NULL))
            continue;
        if (GetMonData(&gPlayerParty[i], MON_DATA_LEVEL, NULL) > best)
            best = GetMonData(&gPlayerParty[i], MON_DATA_LEVEL, NULL);
    }
    return best;
}

// Corridor of the current map section, falling back to the rule set's
// default floor/ceiling.
static void GetCorridor(const struct ScalingRules *rules, u8 *floor, u8 *ceiling)
{
    *floor = rules->defaultFloor;
    *ceiling = rules->defaultCeiling;
    FindCorridor(rules, gMapHeader.regionMapSectionId, floor, ceiling);
}

// Clamps a scaled level into the corridor and then into the rule set's
// absolute min/max level.
static u8 ClampScaledLevel(const struct ScalingRules *rules, s32 level, u8 floor, u8 ceiling)
{
    if (level < floor)
        level = floor;
    if (level > ceiling)
        level = ceiling;
    if (level < rules->minLevel)
        level = rules->minLevel;
    if (level > rules->maxLevel)
        level = rules->maxLevel;
    return level;
}

// Scales a wild Pokemon's level to the player's party. Returns the level
// unchanged where no scaling applies or the party is empty.
u8 ScaleWildMonLevel(u8 level)
{
    const struct ScalingRules *rules = GetScalingRules();
    s32 anchor, scaled, width;
    u8 floor, ceiling;

    if (rules == NULL)
        return level;
    anchor = GetScalingAnchor();
    if (anchor == 0)
        return level;

    // Wild band: anchor - BELOW .. anchor - ABOVE, uniformly distributed.
    width = rules->wildBelow - rules->wildAbove + 1;
    scaled = anchor - rules->wildBelow + (s32)(Random() % width);

    GetCorridor(rules, &floor, &ceiling);
    return ClampScaledLevel(rules, scaled, floor, ceiling);
}


// Evolves a trainer's species along its evolution chain (up to two
// steps) as long as the scaled level reaches the threshold. Only for
// trainer teams - wild Pokemon deliberately keep their base forms (so they
// can be caught).
u16 ScaleTrainerMonSpecies(u16 species, u8 scaledLevel)
{
    const struct ScalingRules *rules = GetScalingRules();
    u32 step, i;

    if (rules == NULL || rules->trainerEvolve != TRUE)
        return species;

    for (step = 0; step < 2; step++)
    {
        const struct Evolution *evos = GetSpeciesEvolutions(species);
        u16 candidates[8];
        u32 count = 0;

        if (evos == NULL)
            break;
        for (i = 0; evos[i].method != EVOLUTIONS_END && count < ARRAY_COUNT(candidates); i++)
        {
            u16 threshold;
            switch (evos[i].method)
            {
            case EVO_LEVEL:
            case EVO_LEVEL_BATTLE_ONLY:
                threshold = evos[i].param;
                break;
            case EVO_ITEM:
            case EVO_TRADE:
                threshold = rules->evoOtherLevel;
                break;
            default:
                continue;
            }
            if (scaledLevel >= threshold)
                candidates[count++] = evos[i].targetSpecies;
        }
        if (count == 0)
            break;
        // Branches (e.g. Wurmple -> Silcoon/Cascoon) are picked at random.
        species = candidates[Random() % count];
    }
    return species;
}

// TRUE for trainer classes that get the boss surcharge on top of the
// trainer band (gym leaders, Elite Four, champions, team leaders/admins,
// Silver).
static bool32 IsBossTrainer(const struct Trainer *trainer)
{
    switch (trainer->trainerClass)
    {
    // Hoenn
    case TRAINER_CLASS_LEADER:
    case TRAINER_CLASS_ELITE_FOUR:
    case TRAINER_CLASS_CHAMPION:
    case TRAINER_CLASS_MAGMA_LEADER:
    case TRAINER_CLASS_MAGMA_ADMIN:
    case TRAINER_CLASS_AQUA_LEADER:
    case TRAINER_CLASS_AQUA_ADMIN:
    // Johto (HnS has classes of its own)
    case TRAINER_CLASS_LEADER_HNS:
    case TRAINER_CLASS_LEADER_KANTO_HNS:
    case TRAINER_CLASS_ELITE_FOUR_HNS:
    case TRAINER_CLASS_CHAMPION_HNS:
    case TRAINER_CLASS_ROCKET_ADMIN_HNS:
    // In Johto Silver is not a route trainer but the recurring yardstick -
    // he gets the same surcharge as the gym leaders.
    case TRAINER_CLASS_RIVAL_HNS:
        return TRUE;
    default:
        return FALSE;
    }
}

// Scales the level of one trainer party member. partyMaxLevel is the
// highest original level in the trainer's party and keeps the level gaps
// within the team intact.
u8 ScaleTrainerMonLevel(const struct Trainer *trainer, u8 level, u8 partyMaxLevel)
{
    const struct ScalingRules *rules = GetScalingRules();
    s32 anchor, top, scaled;
    u8 floor, ceiling;

    if (rules == NULL)
        return level;
    // Super bosses with a fixed original level (Steven in Meteor Falls,
    // Red on Mt. Silver) stay unscaled.
    if (partyMaxLevel >= rules->fixedMinLevel)
        return level;

    anchor = GetScalingAnchor();
    if (anchor == 0 || partyMaxLevel == 0)
        return level;

    // The trainer's ace sits at the top of the band; all others keep their
    // original distance to the ace. That way the team structure (e.g.
    // 17/17/19) survives scaling.
    top = anchor + rules->trainerAbove;
    if (IsBossTrainer(trainer))
        top += rules->bossExtra;
    scaled = top - (s32)(partyMaxLevel - level);
    if (scaled < anchor - rules->trainerBelow)
        scaled = anchor - rules->trainerBelow;

    GetCorridor(rules, &floor, &ceiling);
    return ClampScaledLevel(rules, scaled, floor, ceiling);
}

#else // Pass-through without scaling (Emerald/FRLG build or switched off)

bool32 LevelScalingActive(void)
{
    return FALSE;
}

u8 ScaleWildMonLevel(u8 level)
{
    return level;
}

u8 ScaleTrainerMonLevel(const struct Trainer *trainer, u8 level, u8 partyMaxLevel)
{
    return level;
}

u16 ScaleTrainerMonSpecies(u16 species, u8 scaledLevel)
{
    return species;
}

#endif

#if defined(POKEMON_HNS)

// The Hoenn town scripts set their FLAG_VISITED_* in the ON_TRANSITION
// script. In a playtest Oldale Town stayed grey (no flying there) despite
// a visit, so the flag is additionally set here whenever a map is loaded.
// That also heals existing save files in which the flag is missing.
static const struct { u16 mapSec; u16 flag; } sHoennVisitedFlags[] =
{
    { MAPSEC_LITTLEROOT_TOWN,  FLAG_VISITED_LITTLEROOT_TOWN  },
    { MAPSEC_OLDALE_TOWN,      FLAG_VISITED_OLDALE_TOWN      },
    { MAPSEC_DEWFORD_TOWN,     FLAG_VISITED_DEWFORD_TOWN     },
    { MAPSEC_LAVARIDGE_TOWN,   FLAG_VISITED_LAVARIDGE_TOWN   },
    { MAPSEC_FALLARBOR_TOWN,   FLAG_VISITED_FALLARBOR_TOWN   },
    { MAPSEC_VERDANTURF_TOWN,  FLAG_VISITED_VERDANTURF_TOWN  },
    { MAPSEC_PACIFIDLOG_TOWN,  FLAG_VISITED_PACIFIDLOG_TOWN  },
    { MAPSEC_PETALBURG_CITY,   FLAG_VISITED_PETALBURG_CITY   },
    { MAPSEC_SLATEPORT_CITY,   FLAG_VISITED_SLATEPORT_CITY   },
    { MAPSEC_MAUVILLE_CITY,    FLAG_VISITED_MAUVILLE_CITY    },
    { MAPSEC_RUSTBORO_CITY,    FLAG_VISITED_RUSTBORO_CITY    },
    { MAPSEC_FORTREE_CITY,     FLAG_VISITED_FORTREE_CITY     },
    { MAPSEC_LILYCOVE_CITY,    FLAG_VISITED_LILYCOVE_CITY    },
    { MAPSEC_MOSSDEEP_CITY,    FLAG_VISITED_MOSSDEEP_CITY    },
    { MAPSEC_SOOTOPOLIS_CITY,  FLAG_VISITED_SOOTOPOLIS_CITY  },
    { MAPSEC_EVER_GRANDE_CITY, FLAG_VISITED_EVER_GRANDE_CITY },
};

// Sets the FLAG_VISITED_* flag of the current Hoenn town, if any.
void TrySetHoennVisitedFlag(void)
{
    u32 i;
    u32 mapSec = gMapHeader.regionMapSectionId;

    for (i = 0; i < ARRAY_COUNT(sHoennVisitedFlags); i++)
    {
        if (sHoennVisitedFlags[i].mapSec == mapSec)
        {
            FlagSet(sHoennVisitedFlags[i].flag);
            return;
        }
    }
}

#else

void TrySetHoennVisitedFlag(void) {}

#endif
