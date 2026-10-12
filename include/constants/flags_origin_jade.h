#ifndef GUARD_CONSTANTS_FLAGS_ORIGIN_JADE_H
#define GUARD_CONSTANTS_FLAGS_ORIGIN_JADE_H

// =====================================================================
// Origin Jade flag block
//
// All new Origin Jade flags go here, not into flags_hns.h or flags_hoenn_de.h.
// GetFlagPointer (src/event_data.c) redirects 0x2000-0x21FF into SaveBlock3.
// Sections: Kanto, Johto and Hoenn, each followed by 32 spare slots, then cross-region.
//
//  1. Append new flags to the end of their section, never into the spare slots.
//  2. Never reuse numbers: rename a dropped flag to FLAG_OJ_UNUSED_* and keep it.
//  3. Run tools/check_flags.py after every HnS merge.
//  4. When a section is full, raise OJ_FLAGS_COUNT and move the next
//     section back. The block may grow up to 0x33FF.
// =====================================================================

#define OJ_FLAGS_START              0x2000
#define OJ_FLAGS_COUNT              512
#define OJ_FLAGS_END                (OJ_FLAGS_START + OJ_FLAGS_COUNT - 1)
#define OJ_NUM_FLAG_BYTES           ((OJ_FLAGS_COUNT + 7) / 8)

// Section starts as offsets from OJ_FLAGS_START.
#define OJ_FLAGS_KANTO              (OJ_FLAGS_START + 0)
#define OJ_FLAGS_KANTO_SIZE         96
#define OJ_FLAGS_JOHTO              (OJ_FLAGS_START + 128)
#define OJ_FLAGS_JOHTO_SIZE         160
#define OJ_FLAGS_HOENN              (OJ_FLAGS_START + 320)
#define OJ_FLAGS_HOENN_SIZE         96
#define OJ_FLAGS_GLOBAL             (OJ_FLAGS_START + 448)
#define OJ_FLAGS_GLOBAL_SIZE        64

// ---------------------------------------------------------------------
// Kanto (OJ_FLAGS_KANTO + 0 to + 95)
// ---------------------------------------------------------------------
// Item balls on Mt. Moon B3F.
#define FLAG_HIDE_MT_MOON_B3F_ITEM_BALL_1                    (OJ_FLAGS_KANTO + 0)
#define FLAG_HIDE_MT_MOON_B3F_ITEM_BALL_2                    (OJ_FLAGS_KANTO + 1)
#define FLAG_HIDE_MT_MOON_B3F_ITEM_BALL_3                    (OJ_FLAGS_KANTO + 2)

// ---------------------------------------------------------------------
// Johto (OJ_FLAGS_JOHTO + 0 to + 159)
// ---------------------------------------------------------------------
// Set once Lance has been beaten (Johto counterpart to FLAG_IS_HOENN_CHAMPION).
#define FLAG_IS_JOHTO_CHAMPION                       (OJ_FLAGS_JOHTO + 0)
// Received the Johto starter from Elm's lab.
#define FLAG_RECEIVED_JOHTO_STARTER                  (OJ_FLAGS_JOHTO + 1)
// Johto start values set on the first visit to New Bark Town.
#define FLAG_JOHTO_ARRIVAL_DONE                      (OJ_FLAGS_JOHTO + 2)
// VAR_JOHTO_STARTER_MON save migration done (see LoadGameSave in src/save.c).
#define FLAG_MIGRATED_JOHTO_STARTER_VAR              (OJ_FLAGS_JOHTO + 3)

// ---------------------------------------------------------------------
// Hoenn (OJ_FLAGS_HOENN + 0 to + 95)
// ---------------------------------------------------------------------
// Hoenn flags moved off numbers that HnS flags use.
#undef  FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_UNKNOWN_0x380
#define FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_UNKNOWN_0x380   (OJ_FLAGS_HOENN + 0)
#undef  FLAG_ARRIVED_AT_TERRA_CAVE_ENTRANCE
#define FLAG_ARRIVED_AT_TERRA_CAVE_ENTRANCE                  (OJ_FLAGS_HOENN + 1)
#undef  FLAG_HIDE_MARINE_CAVE_KYOGRE
#define FLAG_HIDE_MARINE_CAVE_KYOGRE                         (OJ_FLAGS_HOENN + 2)
#undef  FLAG_UNKNOWN_0x363
#define FLAG_UNKNOWN_0x363                                   (OJ_FLAGS_HOENN + 3)
#undef  FLAG_HIDE_LILYCOVE_CONTEST_HALL_CONTEST_ATTENDANT_2
#define FLAG_HIDE_LILYCOVE_CONTEST_HALL_CONTEST_ATTENDANT_2  (OJ_FLAGS_HOENN + 4)
#undef  FLAG_HIDE_PETALBURG_GYM_WALLYS_DAD
#define FLAG_HIDE_PETALBURG_GYM_WALLYS_DAD                   (OJ_FLAGS_HOENN + 5)
#undef  FLAG_HIDE_FANCLUB_OLD_LADY
#define FLAG_HIDE_FANCLUB_OLD_LADY                           (OJ_FLAGS_HOENN + 6)
#undef  FLAG_HIDE_FANCLUB_BOY
#define FLAG_HIDE_FANCLUB_BOY                                (OJ_FLAGS_HOENN + 7)
#undef  FLAG_HIDE_SOUTHERN_ISLAND_UNCHOSEN_EON_DUO_MON
#define FLAG_HIDE_SOUTHERN_ISLAND_UNCHOSEN_EON_DUO_MON       (OJ_FLAGS_HOENN + 8)
#undef  FLAG_HIDE_MAUVILLE_CITY_SCOTT
#define FLAG_HIDE_MAUVILLE_CITY_SCOTT                        (OJ_FLAGS_HOENN + 9)
#undef  FLAG_HIDE_CHAMPIONS_ROOM_RIVAL
#define FLAG_HIDE_CHAMPIONS_ROOM_RIVAL                       (OJ_FLAGS_HOENN + 10)
#undef  FLAG_HIDE_CHAMPIONS_ROOM_BIRCH
#define FLAG_HIDE_CHAMPIONS_ROOM_BIRCH                       (OJ_FLAGS_HOENN + 11)
#undef  FLAG_HIDE_ROUTE_110_RIVAL_ON_BIKE
#define FLAG_HIDE_ROUTE_110_RIVAL_ON_BIKE                    (OJ_FLAGS_HOENN + 12)
#undef  FLAG_HIDE_ROUTE_119_RIVAL_ON_BIKE
#define FLAG_HIDE_ROUTE_119_RIVAL_ON_BIKE                    (OJ_FLAGS_HOENN + 13)
#undef  FLAG_HIDE_LILYCOVE_MOTEL_GAME_DESIGNERS
#define FLAG_HIDE_LILYCOVE_MOTEL_GAME_DESIGNERS              (OJ_FLAGS_HOENN + 14)
#undef  FLAG_HIDE_METEOR_FALLS_TEAM_AQUA
#define FLAG_HIDE_METEOR_FALLS_TEAM_AQUA                     (OJ_FLAGS_HOENN + 15)
#undef  FLAG_HIDE_ROUTE_128_STEVEN
#define FLAG_HIDE_ROUTE_128_STEVEN                           (OJ_FLAGS_HOENN + 16)

// Trainer flags of Hoenn trainers whose flag id would land on the daily or
// engine flags. TrainerIdToFlagId (src/battle_setup.c) redirects them here.
#define OJ_TRAINER_FLAGS_DAILY                               (OJ_FLAGS_HOENN + 17)
#define OJ_TRAINER_FLAGS_ENGINE                              (OJ_TRAINER_FLAGS_DAILY + NUM_DAILY_FLAGS)
#define OJ_TRAINER_FLAGS_HOENN_END                           (OJ_TRAINER_FLAGS_ENGINE + NUM_ENGINE_FLAGS - 1)
// Rydel's Mach/Acro Bike in Mauville (FLAG_RECEIVED_BIKE is the Johto bike).
#define FLAG_RECEIVED_HOENN_BIKE                             (OJ_TRAINER_FLAGS_HOENN_END + 1)

// ---------------------------------------------------------------------
// Cross-region (OJ_FLAGS_GLOBAL + 0 to + 63)
// ---------------------------------------------------------------------
// no entries yet

#endif // GUARD_CONSTANTS_FLAGS_ORIGIN_JADE_H
