#ifndef GUARD_CONFIG_JOHTO_SCALING_H
#define GUARD_CONFIG_JOHTO_SCALING_H

// =====================================================================
// Johto level scaling - rules file (hns_de / modern_hns_engde)
//
// Origin Jade sends the player to Johto as the champion of Kanto. HnS,
// on the other hand, builds Johto as the starting region (Falkner at
// levels 8-11). Instead of raising every trainer and wild table by hand,
// the same principle as in Hoenn applies: trainers and wild Pokémon scale
// dynamically with the player, within a corridor per area set by the
// author. The static levels in trainers_hns.party then only count as
// *gaps inside a team*.
//
// Core rules (agreed with Marc):
//  - Anchor = highest level in the player's party, as in Hoenn.
//  - Route trainers sit at anchor -3 to +2, bosses at anchor +3.
//  - Johto spans levels 45 to 80: the entry lies just below the end of
//    Kanto (champion 50-52), the league ends at 80 and hands over to
//    Hoenn. The ceilings of tiers 1 to 4 are tight (55/61/67/73) so the
//    arrival area does not immediately sit above the player.
//  - The corridor table also defines the region: anything NOT listed here
//    keeps the static HnS balance. That leaves Kanto untouched (Marc's
//    hand-set ladder up to 52 applies there), and Sinjoh, the Alola
//    islands, Route 49/50, Bell Tower and Trainer Hill stay out as long
//    as they cannot be reached.
//  - Species stay vanilla - ONLY levels scale.
// =====================================================================

#define JOHTO_LEVEL_SCALING          TRUE  // master switch

// Tighter than in Hoenn (-5/+3). Origin Jade does not send a beginner
// through Johto but a champion with a grown team - a narrow gap is enough
// to keep fights interesting. Four levels above the player is already
// demanding; that is reserved for the bosses.
#define JOHTO_SCALING_TRAINER_BELOW  3     // Trainer band: anchor - 3 ...
#define JOHTO_SCALING_TRAINER_ABOVE  2     // ... up to anchor + 2
#define JOHTO_SCALING_WILD_BELOW     10    // Wild band: anchor - 10 ...
#define JOHTO_SCALING_WILD_ABOVE     4     // ... up to anchor - 4
// One level on top, not two. Four above the strongest party member is a
// lot when the anchor already is the top of the player's party - against
// the rest of the team it quickly becomes eight. In Johto the difference
// to a route trainer comes from team size and coverage, not from raw
// levels. For comparison: Hoenn uses +5, but it is the final region.
#define JOHTO_SCALING_BOSS_EXTRA     1     // Boss ace: anchor + 2 + 1

// Trainers whose original team is already at or above this level are
// deliberately placed super bosses and are NOT scaled. In Johto this only
// affects Red on Mt. Silver (77-93) - Lance's champion team (68-75) and
// the Elite Four rematches (63-70) keep scaling.
#define JOHTO_SCALING_FIXED_MIN_LEVEL 77

// Evolution catch-up as in Hoenn: Falkner's Pidgey shows up at level 55
// as a Pidgeot, not as a pushover.
#define JOHTO_SCALING_TRAINER_EVOLVE TRUE
#define JOHTO_SCALING_EVO_OTHER_LEVEL 36   // threshold for stone/trade evolutions

// Fallback only - in Johto the corridor table defines the region; an
// area without an entry is not scaled at all.
#define JOHTO_SCALING_MIN_LEVEL      5     // absolute lower bound
#define JOHTO_SCALING_MAX_LEVEL      100   // absolute upper bound

#define JOHTO_SCALING_DEFAULT_FLOOR    45
#define JOHTO_SCALING_DEFAULT_CEILING  80

#define JOHTO_SCALING_CORRIDORS \
    /* Transition from Kanto (45-80). These three areas are passed \
       TWICE: on the way in as a fresh Kanto champion and on the way \
       back to the Johto League. Hence the full band on purpose - the \
       anchor decides which of the two visits it is. */ \
    { MAPSEC_ROUTE_26,          45,  80 }, \
    { MAPSEC_ROUTE_27,          45,  80 }, \
    { MAPSEC_TOHJO_FALLS,       45,  80 }, \
    /* Tier 1: arrival up to Bugsy (45-55). The ceiling is tight on
       purpose: someone arriving from Kanto at 50 should not face Silver
       at 60 on the first meeting. A boss's ace sits at anchor + 5. */ \
    { MAPSEC_NEW_BARK_TOWN,     45,  55 }, \
    { MAPSEC_ROUTE_29,          45,  55 }, \
    { MAPSEC_CHERRYGROVE_CITY,  45,  55 }, \
    { MAPSEC_ROUTE_30,          45,  55 }, \
    { MAPSEC_ROUTE_31,          45,  55 }, \
    { MAPSEC_VIOLET_CITY,       45,  55 }, \
    { MAPSEC_SPROUT_TOWER,      45,  55 }, \
    { MAPSEC_RUINS_OF_ALPH,     45,  55 }, \
    { MAPSEC_ROUTE_32,          45,  55 }, \
    { MAPSEC_UNION_CAVE,        45,  55 }, \
    { MAPSEC_ROUTE_33,          45,  55 }, \
    { MAPSEC_AZALEA_TOWN,       45,  55 }, \
    { MAPSEC_SLOWPOKE_WELL,     45,  55 }, \
    { MAPSEC_ILEX_FOREST,       45,  55 }, \
    /* Dark Cave and Route 46 also connect to the late side \
       (Route 45 / Blackthorn). They still stay in tier 1 because \
       the earliest access sets the level. */ \
    { MAPSEC_DARK_CAVE,         45,  55 }, \
    { MAPSEC_ROUTE_46,          45,  55 }, \
    /* Tier 2: Whitney and Morty (50-61) */ \
    { MAPSEC_ROUTE_34,          50,  61 }, \
    { MAPSEC_GOLDENROD_CITY,    50,  61 }, \
    { MAPSEC_ROUTE_35,          50,  61 }, \
    { MAPSEC_NATIONAL_PARK,     50,  61 }, \
    { MAPSEC_ROUTE_36,          50,  61 }, \
    { MAPSEC_ROUTE_37,          50,  61 }, \
    { MAPSEC_ECRUTEAK_CITY,     50,  61 }, \
    { MAPSEC_BURNED_TOWER,      50,  61 }, \
    { MAPSEC_TIN_TOWER,         50,  61 }, \
    /* Tier 3: Jasmine and Chuck (55-67) */ \
    { MAPSEC_ROUTE_38,          55,  67 }, \
    { MAPSEC_ROUTE_39,          55,  67 }, \
    { MAPSEC_OLIVINE_CITY,      55,  67 }, \
    { MAPSEC_OLIVINE_LIGHTHOUSE, 55, 71 }, \
    { MAPSEC_SS_AQUA,           55,  67 }, \
    { MAPSEC_ROUTE_40,          55,  67 }, \
    { MAPSEC_ROUTE_41,          55,  67 }, \
    { MAPSEC_WHIRL_ISLANDS,     55,  67 }, \
    { MAPSEC_CIANWOOD_CITY,     55,  67 }, \
    { MAPSEC_ROUTE_47,          55,  67 }, \
    { MAPSEC_ROUTE_48,          55,  67 }, \
    { MAPSEC_CLIFF_CAVE,        55,  67 }, \
    { MAPSEC_SAFARI_ZONE_GATE,  55,  67 }, \
    /* Tier 4: Pryce and Clair (60-73) */ \
    { MAPSEC_ROUTE_42,          60,  73 }, \
    { MAPSEC_MT_MORTAR,         60,  73 }, \
    { MAPSEC_MAHOGANY_TOWN,     60,  73 }, \
    { MAPSEC_ROUTE_43,          60,  73 }, \
    { MAPSEC_LAKE_OF_RAGE,      60,  73 }, \
    { MAPSEC_ROCKET_HIDEOUT_HNS, 60, 76 }, \
    { MAPSEC_ROUTE_44,          60,  73 }, \
    { MAPSEC_ICE_PATH,          60,  73 }, \
    { MAPSEC_BLACKTHORN_CITY,   60,  73 }, \
    { MAPSEC_DRAGONS_DEN,       60,  73 }, \
    { MAPSEC_ROUTE_45,          60,  73 }, \
    /* Tier 5: Victory Road and League (65-80). Careful: \
       MAPSEC_INDIGO_PLATEAU holds Johto's Elite Four rooms \
       (PokemonLeague_*_hns) AND Kanto's outdoor area; Kanto's own \
       league sits under MAPSEC_POKEMON_LEAGUE (*_Frlg) instead and \
       therefore stays outside the scaling. */ \
    { MAPSEC_VICTORY_ROAD_HNS,  65,  80 }, \
    { MAPSEC_INDIGO_PLATEAU,    65,  80 }, \
    /* Mt. Silver: deliberately above the Johto ceiling, the mountain \
       is the toughest place in the region. Red himself stays unscaled \
       (JOHTO_SCALING_FIXED_MIN_LEVEL). Route 28 is included so the \
       access fits as soon as it opens. */ \
    { MAPSEC_ROUTE_28,          70,  90 }, \
    { MAPSEC_MT_SILVER,         70,  90 },

#endif // GUARD_CONFIG_JOHTO_SCALING_H
