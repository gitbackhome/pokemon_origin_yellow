#ifndef GUARD_CONFIG_HOENN_SCALING_H
#define GUARD_CONFIG_HOENN_SCALING_H

// =====================================================================
// Hoenn level scaling - rules file (hns_de / modern_hns_engde)
//
// The player reaches Hoenn as champion of Johto and Kanto. For the region
// to work as the third chapter, trainers and wild Pokémon scale
// dynamically with the player, within a corridor per area set by the
// author ("the world grows with you, but stays a world with a gradient").
//
// Core rules (agreed with Marc):
//  - Anchor = highest level in the player's party (cannot be gamed,
//             unlike slot 1).
//  - Trainers: anchor - 5 .. anchor + 3. The level gaps inside a team
//             are kept (the trainer's ace sits at the top of the band).
//  - Wild:    anchor - 10 .. anchor - 4. The grass is deliberately BELOW
//             the player: training ground and catching area; the
//             exciting fights come from the trainers.
//  - Bosses (gym leaders, Elite Four, champion, Magma/Aqua bosses and
//             admins): top of the band + HOENN_SCALING_BOSS_EXTRA.
//  - Species stay vanilla - ONLY levels scale. Base forms remain
//    catchable and can be evolved by the player.
//  - Applies ONLY in the Hoenn world (map section guard). Johto follows
//    the same rules with its own file (config/johto_scaling.h); Kanto
//    keeps its hand-set level ladder. Fixed event/legendary encounters,
//    roamers and the Battle Frontier are not affected.
//  - Experience: wherever scaling applies (Hoenn AND Johto) the Gen 5
//    formula (weighted by level difference) is used, so the exp feedback
//    of the scaling does not explode. Kanto keeps the Gen 3 formula.
// =====================================================================

#define HOENN_LEVEL_SCALING          TRUE  // master switch

#define HOENN_SCALING_TRAINER_BELOW  5     // Trainer band: anchor - 5 ...
#define HOENN_SCALING_TRAINER_ABOVE  3     // ... up to anchor + 3
#define HOENN_SCALING_WILD_BELOW     10    // Wild band: anchor - 10 ...
#define HOENN_SCALING_WILD_ABOVE     4     // ... up to anchor - 4
#define HOENN_SCALING_BOSS_EXTRA     2     // Boss ace: anchor + 3 + 2

// Trainers whose original team is already at or above this level are
// deliberately placed super bosses (e.g. Steven in Meteor Falls, levels
// 75-78) and are NOT scaled - just like Red on Mt. Silver.
#define HOENN_SCALING_FIXED_MIN_LEVEL 70


// Trainer evolution catch-up: trainer Pokémon (NOT wild Pokémon - their
// catch/evolve-yourself logic stays untouched) are evolved along their
// evolution chain when they are generated, as long as the scaled level
// reaches the respective threshold. A bug catcher's level 57 Wurmple thus
// becomes Beautifly/Dustox instead of a pushover. Stone/trade evolutions
// use the fallback threshold. Branches (e.g. Wurmple) are picked at random.
#define HOENN_SCALING_TRAINER_EVOLVE TRUE
#define HOENN_SCALING_EVO_OTHER_LEVEL 36   // threshold for stone/trade evolutions

#define HOENN_SCALING_MIN_LEVEL      5     // absolute lower bound
#define HOENN_SCALING_MAX_LEVEL      100   // absolute upper bound

// Corridor per area: {map section, floor, ceiling}. The floor keeps the
// "Hoenn is strong" lore even with a low anchor; the ceiling preserves the
// region's gradient (Route 101 never becomes endgame-hard, Victory Road
// never drops below its level). Areas without an entry use
// HOENN_SCALING_DEFAULT_FLOOR/CEILING.
#define HOENN_SCALING_DEFAULT_FLOOR    40
#define HOENN_SCALING_DEFAULT_CEILING  100

#define HOENN_SCALING_CORRIDORS \
    /* Tier 1: entry (40-65) */ \
    { MAPSEC_LITTLEROOT_TOWN,   40,  65 }, \
    { MAPSEC_OLDALE_TOWN,       40,  65 }, \
    /* Petalburg can be reached early, but its gym is the fifth \
       badge - and outside the gym there are no trainers there. \
       Hence tier 3. */ \
    { MAPSEC_PETALBURG_CITY,    50,  85 }, \
    { MAPSEC_ROUTE_101,         40,  65 }, \
    { MAPSEC_ROUTE_102,         40,  65 }, \
    { MAPSEC_ROUTE_103,         40,  65 }, \
    { MAPSEC_ROUTE_104,         40,  65 }, \
    { MAPSEC_PETALBURG_WOODS,   40,  65 }, \
    { MAPSEC_ROUTE_116,         40,  65 }, \
    { MAPSEC_RUSTURF_TUNNEL,    40,  65 }, \
    { MAPSEC_RUSTBORO_CITY,     40,  65 }, \
    { MAPSEC_DEWFORD_TOWN,      40,  65 }, \
    { MAPSEC_ROUTE_105,         50,  85 }, \
    { MAPSEC_ROUTE_106,         40,  65 }, \
    { MAPSEC_ROUTE_107,         50,  85 }, \
    { MAPSEC_ROUTE_108,         50,  85 }, \
    { MAPSEC_GRANITE_CAVE,      40,  65 }, \
    /* Routes 105/107/108 and the Abandoned Ship can only be reached \
       with Surf (after Norman's gym) - so they are in tier 3, not in \
       the early Dewford block. */ \
    { MAPSEC_ABANDONED_SHIP,    50,  85 }, \
    /* Tier 2: early middle (45-75) */ \
    { MAPSEC_SLATEPORT_CITY,    45,  75 }, \
    { MAPSEC_ROUTE_109,         45,  75 }, \
    { MAPSEC_ROUTE_110,         45,  75 }, \
    { MAPSEC_MAUVILLE_CITY,     45,  75 }, \
    { MAPSEC_VERDANTURF_TOWN,   45,  75 }, \
    { MAPSEC_ROUTE_117,         45,  75 }, \
    { MAPSEC_ROUTE_118,         50,  85 }, \
    { MAPSEC_ROUTE_111,         50,  85 }, \
    { MAPSEC_ROUTE_112,         50,  85 }, \
    { MAPSEC_ROUTE_113,         45,  75 }, \
    { MAPSEC_FIERY_PATH,        50,  85 }, \
    { MAPSEC_FIERY_PATH2,       50,  85 }, \
    { MAPSEC_JAGGED_PASS,       50,  85 }, \
    { MAPSEC_JAGGED_PASS2,      50,  85 }, \
    /* New Mauville lies behind the water on Route 110 - \
       there is no way in without Surf. */ \
    { MAPSEC_NEW_MAUVILLE,      50,  85 }, \
    { MAPSEC_MIRAGE_TOWER,      45,  75 }, \
    /* Tier 3: late middle (50-85) */ \
    { MAPSEC_FALLARBOR_TOWN,    50,  85 }, \
    { MAPSEC_ROUTE_114,         50,  85 }, \
    { MAPSEC_ROUTE_115,         50,  85 }, \
    { MAPSEC_METEOR_FALLS,      50,  85 }, \
    { MAPSEC_METEOR_FALLS2,     50,  85 }, \
    { MAPSEC_MT_CHIMNEY,        50,  85 }, \
    { MAPSEC_LAVARIDGE_TOWN,    50,  85 }, \
    { MAPSEC_ROUTE_119,         50,  85 }, \
    { MAPSEC_ROUTE_120,         50,  85 }, \
    { MAPSEC_FORTREE_CITY,      50,  85 }, \
    { MAPSEC_SCORCHED_SLAB,     50,  85 }, \
    { MAPSEC_SAFARI_ZONE,       50,  85 }, \
    /* Tier 4: final stretch (55-95) */ \
    { MAPSEC_ROUTE_121,         55,  95 }, \
    { MAPSEC_ROUTE_122,         55,  95 }, \
    { MAPSEC_ROUTE_123,         55,  95 }, \
    { MAPSEC_LILYCOVE_CITY,     55,  95 }, \
    { MAPSEC_MT_PYRE,           55,  95 }, \
    { MAPSEC_ROUTE_124,         55,  95 }, \
    { MAPSEC_ROUTE_125,         55,  95 }, \
    { MAPSEC_ROUTE_126,         55,  95 }, \
    { MAPSEC_ROUTE_127,         55,  95 }, \
    { MAPSEC_ROUTE_128,         55,  95 }, \
    { MAPSEC_UNDERWATER_124,    55,  95 }, \
    { MAPSEC_UNDERWATER_126,    55,  95 }, \
    { MAPSEC_UNDERWATER_127,    55,  95 }, \
    { MAPSEC_UNDERWATER_128,    55,  95 }, \
    { MAPSEC_MOSSDEEP_CITY,     55,  95 }, \
    { MAPSEC_SHOAL_CAVE,        55,  95 }, \
    { MAPSEC_AQUA_HIDEOUT,      55,  95 }, \
    { MAPSEC_AQUA_HIDEOUT_OLD,  55,  95 }, \
    { MAPSEC_MAGMA_HIDEOUT,     55,  95 }, \
    { MAPSEC_SEAFLOOR_CAVERN,   55,  95 }, \
    { MAPSEC_UNDERWATER_SEAFLOOR_CAVERN, 55, 95 }, \
    { MAPSEC_SOOTOPOLIS_CITY,   55,  95 }, \
    { MAPSEC_UNDERWATER_SOOTOPOLIS, 55, 95 }, \
    { MAPSEC_CAVE_OF_ORIGIN,    55,  95 }, \
    { MAPSEC_ROUTE_129,         55,  95 }, \
    { MAPSEC_ROUTE_130,         55,  95 }, \
    { MAPSEC_ROUTE_131,         55,  95 }, \
    { MAPSEC_ROUTE_132,         55,  95 }, \
    { MAPSEC_ROUTE_133,         55,  95 }, \
    { MAPSEC_ROUTE_134,         55,  95 }, \
    { MAPSEC_PACIFIDLOG_TOWN,   55,  95 }, \
    { MAPSEC_MIRAGE_ISLAND,     55,  95 }, \
    { MAPSEC_SEALED_CHAMBER,    55,  95 }, \
    { MAPSEC_UNDERWATER_SEALED_CHAMBER, 55, 95 }, \
    { MAPSEC_ISLAND_CAVE,       55,  95 }, \
    { MAPSEC_DESERT_RUINS,      55,  95 }, \
    { MAPSEC_ANCIENT_TOMB,      55,  95 }, \
    /* Tier 5: endgame (60-100) */ \
    { MAPSEC_VICTORY_ROAD,      60, 100 }, \
    { MAPSEC_EVER_GRANDE_CITY,  60, 100 }, \
    { MAPSEC_SKY_PILLAR,        60, 100 }, \
    { MAPSEC_DESERT_UNDERPASS,  60, 100 }, \
    { MAPSEC_ARTISAN_CAVE,      60, 100 }, \
    { MAPSEC_MARINE_CAVE,       60, 100 }, \
    { MAPSEC_UNDERWATER_MARINE_CAVE, 60, 100 }, \
    { MAPSEC_TERRA_CAVE,        60, 100 }, \
    { MAPSEC_ALTERING_CAVE,     60, 100 }, \
    { MAPSEC_NAVEL_ROCK,        60, 100 }, \
    { MAPSEC_UNDERWATER_105,    60, 100 }, \
    { MAPSEC_UNDERWATER_125,    60, 100 }, \
    { MAPSEC_UNDERWATER_129,    60, 100 },


// =====================================================================
// Global experience damping (applies WORLDWIDE, Johto/Kanto too!)
// Goal: the player should not finish the base game at level 80-100 and
// then have nothing left to level in Hoenn. Curve as specified by Marc:
// fast up to 30 (full), 30-60 medium, slower from 60 on - but never
// hours per level. The damping works per RECEIVING level: a low team
// member keeps levelling quickly while the high ace is slowed down.
// =====================================================================
#define EXP_DAMP_ENABLED             TRUE
#define EXP_DAMP_FAST_UNTIL          30    // up to here: 100 %
#define EXP_DAMP_MID_UNTIL           60    // 31-60:
#define EXP_DAMP_MID_PERCENT         70    //   70 % experience
#define EXP_DAMP_HIGH_PERCENT        50    // from 61: 50 % experience

#endif // GUARD_CONFIG_HOENN_SCALING_H
