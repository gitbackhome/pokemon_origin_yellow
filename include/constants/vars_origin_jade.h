#ifndef GUARD_CONSTANTS_VARS_ORIGIN_JADE_H
#define GUARD_CONSTANTS_VARS_ORIGIN_JADE_H

// =====================================================================
// Origin Jade - reserved var block
//
// Counterpart to constants/flags_origin_jade.h; the same rules apply.
// New Origin Jade vars come from this block, not appended to
// vars_hoenn_de.h anymore.
//
// Here too the storage lives in SaveBlock3 (GetVarPointer in
// src/event_data.c) because SaveBlock1 is full. The numbers
// 0x4300-0x437F lie behind the FRLG vars (0x4200-0x42BF) and far below
// the special vars (0x8000).
//
// Layout as for the flags: Kanto, Johto, Hoenn, cross-region, with eight
// spare slots between each. Vars cost two bytes instead of one bit, so
// the block is smaller - if you only need a yes/no, use a flag.
// =====================================================================

#define OJ_VARS_START               0x4300
#define OJ_VARS_COUNT               128
#define OJ_VARS_END                 (OJ_VARS_START + OJ_VARS_COUNT - 1)

#define OJ_VARS_KANTO               (OJ_VARS_START + 0)     // 24 slots
#define OJ_VARS_KANTO_SIZE          24
#define OJ_VARS_JOHTO               (OJ_VARS_START + 32)    // 40 slots
#define OJ_VARS_JOHTO_SIZE          40
#define OJ_VARS_HOENN               (OJ_VARS_START + 80)    // 24 slots
#define OJ_VARS_HOENN_SIZE          24
#define OJ_VARS_GLOBAL              (OJ_VARS_START + 112)   // 16 slots
#define OJ_VARS_GLOBAL_SIZE         16

// ---------------------------------------------------------------------
// Kanto (OJ_VARS_KANTO + 0 to + 23)
// ---------------------------------------------------------------------
// no entries yet

// ---------------------------------------------------------------------
// Johto (OJ_VARS_JOHTO + 0 to + 39)
// ---------------------------------------------------------------------
// HM permits as a bitmask, see include/johto_permits.h.
#define VAR_JOHTO_PERMITS           (OJ_VARS_JOHTO + 0)
// No VAR_JOHTO_BADGES here: it has existed in constants/vars_frlg_hns.h
// since the Kanto merge, and the trainer card already reads it. It is
// only being filled now (src/johto_badges.c).
// Progress of the arrival from Kanto, counterpart to VAR_HOENN_ARRIVAL_STATE.
#define VAR_JOHTO_ARRIVAL_STATE     (OJ_VARS_JOHTO + 1)

// ---------------------------------------------------------------------
// Hoenn (OJ_VARS_HOENN + 0 to + 23)
// ---------------------------------------------------------------------
// Relocated Hoenn vars. vars.h keeps every Emerald var on its vanilla
// number, and vars_hns.h hands the same numbers to HnS content. Each of
// these was used by a live Hoenn script and by a live HnS script or by C
// at the same time. Examples: the Pokegear radio writes its weekly lucky
// number into VAR_OLDALE_RIVAL_STATE and VAR_JAGGED_PASS_STATE, and Trick
// House puzzle 5 overwrote VAR_SINJOH_STORYLINE. As with the flags, the
// Hoenn side moves so the HnS numbers stay put for upstream merges.
// shared its number with VAR_ALOLA_TRAVEL
#undef  VAR_TRICK_HOUSE_PUZZLE_3_STATE
#define VAR_TRICK_HOUSE_PUZZLE_3_STATE          (OJ_VARS_HOENN + 0)
// shared its number with VAR_ALOLA_STATE
#undef  VAR_TRICK_HOUSE_PUZZLE_4_STATE
#define VAR_TRICK_HOUSE_PUZZLE_4_STATE          (OJ_VARS_HOENN + 1)
// shared its number with VAR_SINJOH_STORYLINE
#undef  VAR_TRICK_HOUSE_PUZZLE_5_STATE
#define VAR_TRICK_HOUSE_PUZZLE_5_STATE          (OJ_VARS_HOENN + 2)
// shared its number with VAR_TRIGGER_ELM_ROCKET_CALL
#undef  VAR_WEATHER_INSTITUTE_STATE
#define VAR_WEATHER_INSTITUTE_STATE             (OJ_VARS_HOENN + 3)
// shared its number with VAR_NOBLE_WYRDEER
#undef  VAR_TRICK_HOUSE_PUZZLE_7_STATE_2
#define VAR_TRICK_HOUSE_PUZZLE_7_STATE_2        (OJ_VARS_HOENN + 4)
// shared its number with VAR_NOBLE_ARCANINE
#undef  VAR_SLATEPORT_FAN_CLUB_STATE
#define VAR_SLATEPORT_FAN_CLUB_STATE            (OJ_VARS_HOENN + 5)
// shared its number with VAR_NOBLE_KLEAVOR
#undef  VAR_MT_PYRE_STATE
#define VAR_MT_PYRE_STATE                       (OJ_VARS_HOENN + 6)
// shared its number with VAR_SAFFRON_CITY_STATE
#undef  VAR_JAGGED_PASS_ASH_WEATHER
#define VAR_JAGGED_PASS_ASH_WEATHER             (OJ_VARS_HOENN + 7)
// shared its number with VAR_SHUCKIE
#undef  VAR_GLASS_WORKSHOP_STATE
#define VAR_GLASS_WORKSHOP_STATE                (OJ_VARS_HOENN + 8)
// shared its number with VAR_SLOWPOKE_TAIL
#undef  VAR_METEOR_FALLS_STATE
#define VAR_METEOR_FALLS_STATE                  (OJ_VARS_HOENN + 9)
// shared its number with VAR_SPROUT_TOWER
#undef  VAR_SOOTOPOLIS_MYSTERY_EVENTS_STATE
#define VAR_SOOTOPOLIS_MYSTERY_EVENTS_STATE     (OJ_VARS_HOENN + 10)
// shared its number with VAR_VIRIDIAN_CITY_STATE
#undef  VAR_TRICK_HOUSE_PRIZE_PICKUP
#define VAR_TRICK_HOUSE_PRIZE_PICKUP            (OJ_VARS_HOENN + 11)
// shared its number with VAR_WILTON_ITEM_HNS
#undef  VAR_VICTORY_ROAD_1F_STATE
#define VAR_VICTORY_ROAD_1F_STATE               (OJ_VARS_HOENN + 12)
// shared its number with VAR_RADIO_LUCKY_ID
#undef  VAR_OLDALE_RIVAL_STATE
#define VAR_OLDALE_RIVAL_STATE                  (OJ_VARS_HOENN + 13)
// shared its number with VAR_RADIO_LUCKY_ID_HI
#undef  VAR_JAGGED_PASS_STATE
#define VAR_JAGGED_PASS_STATE                   (OJ_VARS_HOENN + 14)

// ---------------------------------------------------------------------
// Cross-region (OJ_VARS_GLOBAL + 0 to + 15)
// ---------------------------------------------------------------------
// no entries yet

#endif // GUARD_CONSTANTS_VARS_ORIGIN_JADE_H
