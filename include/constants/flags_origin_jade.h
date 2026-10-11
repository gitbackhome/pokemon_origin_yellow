#ifndef GUARD_CONSTANTS_FLAGS_ORIGIN_JADE_H
#define GUARD_CONSTANTS_FLAGS_ORIGIN_JADE_H

// =====================================================================
// Origin Jade - reserved flag block
//
// PURPOSE
// Every flag Origin Jade adds itself comes from this block from now on.
// Do not append to flags_hns.h or flags_hoenn_de.h anymore - that is
// exactly how the previous collisions came about (Match Call vs. the
// Hoenn content flags, FRLG trainer flags vs. the badge flags).
//
// WHY OUTSIDE OF SaveBlock1
// SaveBlock1 is full: less than eight bytes remain between
// sizeof(struct SaveBlock1) and the sector boundary. Like the FRLG flags,
// the block is therefore redirected into SaveBlock3 (GetFlagPointer in
// src/event_data.c). The numbers 0x2000-0x21FF deliberately sit in a gap
// between the FRLG flags (0x1000-0x13FF) and the redirected FRLG trainer
// flags (from 0x3400).
//
// LAYOUT
// First by region in the order Kanto, Johto, Hoenn, then cross-region.
// Each region is followed by 32 spare slots so that an addition in Kanto
// does not shift everything behind it. Within a region, sort freely by
// topic.
//
// RULES
//  1. New flags ALWAYS go to the end of the matching region section,
//     never into the gap behind it - that gap is the buffer.
//  2. Never reuse numbers. A flag that is dropped gets renamed to
//     FLAG_OJ_UNUSED_* and stays in place.
//  3. Run tools/check_flags.py after every HnS merge. The checker
//     resolves all flags and vars numerically and reports double
//     assignments - the compiler does not.
//  4. When a section runs full, raise OJ_FLAGS_COUNT and move the next
//     section back. There is room: the block may grow up to 0x33FF.
// =====================================================================

#define OJ_FLAGS_START              0x2000
#define OJ_FLAGS_COUNT              512
#define OJ_FLAGS_END                (OJ_FLAGS_START + OJ_FLAGS_COUNT - 1)
#define OJ_NUM_FLAG_BYTES           ((OJ_FLAGS_COUNT + 7) / 8)

// Section starts as offsets from OJ_FLAGS_START.
#define OJ_FLAGS_KANTO              (OJ_FLAGS_START + 0)    // 96 slots
#define OJ_FLAGS_KANTO_SIZE         96
#define OJ_FLAGS_JOHTO              (OJ_FLAGS_START + 128)  // 160 slots
#define OJ_FLAGS_JOHTO_SIZE         160
#define OJ_FLAGS_HOENN              (OJ_FLAGS_START + 320)  // 96 slots
#define OJ_FLAGS_HOENN_SIZE         96
#define OJ_FLAGS_GLOBAL             (OJ_FLAGS_START + 448)  // 64 slots
#define OJ_FLAGS_GLOBAL_SIZE        64

// ---------------------------------------------------------------------
// Kanto (OJ_FLAGS_KANTO + 0 to + 95)
// ---------------------------------------------------------------------
// Item balls on Mt. Moon B3F (a map Origin Jade added). They were copied
// from B2F together with FLAG_HIDE_MT_MOON_B2F_ANTIDOTE, so picking up any
// one of the four balls removed all of them.
#define FLAG_HIDE_MT_MOON_B3F_ITEM_BALL_1                    (OJ_FLAGS_KANTO + 0)
#define FLAG_HIDE_MT_MOON_B3F_ITEM_BALL_2                    (OJ_FLAGS_KANTO + 1)
#define FLAG_HIDE_MT_MOON_B3F_ITEM_BALL_3                    (OJ_FLAGS_KANTO + 2)

// ---------------------------------------------------------------------
// Johto (OJ_FLAGS_JOHTO + 0 to + 159)
// ---------------------------------------------------------------------
// Counterpart to FLAG_IS_HOENN_CHAMPION: set once Lance has been beaten.
// A flag of its own is needed because FLAG_SYS_GAME_CLEAR is already set
// by the Kanto league - Johto could not tell from it whether the player
// is champion here as well. Controls call texts and everything that
// should behave differently after the Johto league.
#define FLAG_IS_JOHTO_CHAMPION                       (OJ_FLAGS_JOHTO + 0)
// Received the Johto starter from Elm's lab. A flag of its own because
// HnS uses FLAG_SYS_POKEMON_GET for it - but that means "has their first
// Pokemon" and in Origin Jade was set long ago by Oak's lab.
#define FLAG_RECEIVED_JOHTO_STARTER                  (OJ_FLAGS_JOHTO + 1)
// One-time catch-up on first entering New Bark Town: HnS sets its Johto
// start values in Mom's house, which Origin Jade skips.
#define FLAG_JOHTO_ARRIVAL_DONE                      (OJ_FLAGS_JOHTO + 2)
// Save migration done: VAR_JOHTO_STARTER_MON split off VAR_STARTER_MON
// (see LoadGameSave in src/save.c). New games set it right away.
#define FLAG_MIGRATED_JOHTO_STARTER_VAR              (OJ_FLAGS_JOHTO + 3)

// ---------------------------------------------------------------------
// Hoenn (OJ_FLAGS_HOENN + 0 to + 95)
// ---------------------------------------------------------------------
// Relocated Hoenn flags. They sat in flags_hns.h with hard-coded numbers
// that lie in the HnS block for extended content - each one shared its
// address with a Johto, Kanto or Sinjoh flag. In practice this meant, for
// example: entering Route 4 in Kanto hid Scott in Hoenn. Found with
// tools/check_flags.py.
//
// The Hoenn side moves, not the other one - that way the HnS flags keep
// their numbers and future upstream merges do not collide.
// The relocation lives here and not in flags_hoenn_de.h because this
// header is included last and the Hoenn block in SaveBlock1 would have
// no room left.
// shared its number with FLAG_ITEM_GOLDENROD_UNDERGROUND_COIN_CASE
#undef  FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_UNKNOWN_0x380
#define FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_UNKNOWN_0x380   (OJ_FLAGS_HOENN + 0)
// shared its number with FLAG_EXP_SHARE
#undef  FLAG_ARRIVED_AT_TERRA_CAVE_ENTRANCE
#define FLAG_ARRIVED_AT_TERRA_CAVE_ENTRANCE                  (OJ_FLAGS_HOENN + 1)
// shared its number with FLAG_HIDE_MT_SILVER_2F_AZURE_FLUTE
#undef  FLAG_HIDE_MARINE_CAVE_KYOGRE
#define FLAG_HIDE_MARINE_CAVE_KYOGRE                         (OJ_FLAGS_HOENN + 2)
// shared its number with FLAG_ROUTE50_ITEMBALL_1
#undef  FLAG_UNKNOWN_0x363
#define FLAG_UNKNOWN_0x363                                   (OJ_FLAGS_HOENN + 3)
// shared its number with FLAG_SINJOHRUINS_ITEM_1
#undef  FLAG_HIDE_LILYCOVE_CONTEST_HALL_CONTEST_ATTENDANT_2
#define FLAG_HIDE_LILYCOVE_CONTEST_HALL_CONTEST_ATTENDANT_2  (OJ_FLAGS_HOENN + 4)
// shared its number with FLAG_SINJOHRUINS_ITEM_2
#undef  FLAG_HIDE_PETALBURG_GYM_WALLYS_DAD
#define FLAG_HIDE_PETALBURG_GYM_WALLYS_DAD                   (OJ_FLAGS_HOENN + 5)
// shared its number with FLAG_SINJOHRUINS_ITEM_3
#undef  FLAG_HIDE_FANCLUB_OLD_LADY
#define FLAG_HIDE_FANCLUB_OLD_LADY                           (OJ_FLAGS_HOENN + 6)
// shared its number with FLAG_SINJOHRUINS_ITEM_4
#undef  FLAG_HIDE_FANCLUB_BOY
#define FLAG_HIDE_FANCLUB_BOY                                (OJ_FLAGS_HOENN + 7)
// shared its number with FLAG_VISITED_ROUTE10
#undef  FLAG_HIDE_SOUTHERN_ISLAND_UNCHOSEN_EON_DUO_MON
#define FLAG_HIDE_SOUTHERN_ISLAND_UNCHOSEN_EON_DUO_MON       (OJ_FLAGS_HOENN + 8)
// shared its number with FLAG_VISITED_ROUTE4
#undef  FLAG_HIDE_MAUVILLE_CITY_SCOTT
#define FLAG_HIDE_MAUVILLE_CITY_SCOTT                        (OJ_FLAGS_HOENN + 9)
// shared its number with FLAG_HIDE_ROUTE49_TM_ROCK_CLIMB
#undef  FLAG_HIDE_CHAMPIONS_ROOM_RIVAL
#define FLAG_HIDE_CHAMPIONS_ROOM_RIVAL                       (OJ_FLAGS_HOENN + 10)
// shared its number with FLAG_COMPLETED_TAUROS_TRADE
#undef  FLAG_HIDE_CHAMPIONS_ROOM_BIRCH
#define FLAG_HIDE_CHAMPIONS_ROOM_BIRCH                       (OJ_FLAGS_HOENN + 11)
// shared its number with FLAG_HIDE_SLOWPOKE_WELL_TAILLESS_SLOWPOKES
#undef  FLAG_HIDE_ROUTE_110_RIVAL_ON_BIKE
#define FLAG_HIDE_ROUTE_110_RIVAL_ON_BIKE                    (OJ_FLAGS_HOENN + 12)
// shared its number with FLAG_ULAULA_MOVE_TUTOR_PAID
#undef  FLAG_HIDE_ROUTE_119_RIVAL_ON_BIKE
#define FLAG_HIDE_ROUTE_119_RIVAL_ON_BIKE                    (OJ_FLAGS_HOENN + 13)
// shared its number with FLAG_USED_TELEPORTER
#undef  FLAG_HIDE_LILYCOVE_MOTEL_GAME_DESIGNERS
#define FLAG_HIDE_LILYCOVE_MOTEL_GAME_DESIGNERS              (OJ_FLAGS_HOENN + 14)
// shared its number with FLAG_HIDE_MT_SILVER_PC_MEARA
#undef  FLAG_HIDE_METEOR_FALLS_TEAM_AQUA
#define FLAG_HIDE_METEOR_FALLS_TEAM_AQUA                     (OJ_FLAGS_HOENN + 15)
// shared its number with FLAG_SINJOH_UNLOCK_MIGRATED
#undef  FLAG_HIDE_ROUTE_128_STEVEN
#define FLAG_HIDE_ROUTE_128_STEVEN                           (OJ_FLAGS_HOENN + 16)

// Trainer flags of the Hoenn trainers whose plain flag id
// (TRAINER_FLAGS_START + trainerId) would land on the daily flags
// (11 slots) or on the engine flags (32 slots). TrainerIdToFlagId in
// src/battle_setup.c redirects them here.
#define OJ_TRAINER_FLAGS_DAILY                               (OJ_FLAGS_HOENN + 17)
#define OJ_TRAINER_FLAGS_ENGINE                              (OJ_TRAINER_FLAGS_DAILY + NUM_DAILY_FLAGS)
#define OJ_TRAINER_FLAGS_HOENN_END                           (OJ_TRAINER_FLAGS_ENGINE + NUM_ENGINE_FLAGS - 1)
// Rydel's Mach/Acro Bike in Mauville. Emerald uses FLAG_RECEIVED_BIKE for
// it, which Goldenrod's bike shop already sets for the Johto bicycle.
#define FLAG_RECEIVED_HOENN_BIKE                             (OJ_TRAINER_FLAGS_HOENN_END + 1)

// ---------------------------------------------------------------------
// Cross-region (OJ_FLAGS_GLOBAL + 0 to + 63)
// ---------------------------------------------------------------------
// no entries yet

#endif // GUARD_CONSTANTS_FLAGS_ORIGIN_JADE_H
