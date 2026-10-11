#ifndef GUARD_CONSTANTS_VARS_ORIGIN_JADE_H
#define GUARD_CONSTANTS_VARS_ORIGIN_JADE_H

// =====================================================================
// Origin Jade - Reservierungsblock fuer Vars
//
// Gegenstueck zu constants/flags_origin_jade.h; dieselben Regeln.
// Neue Vars von Origin Jade kommen aus diesem Block, nicht mehr hinten
// an vars_hoenn_de.h.
//
// Auch hier liegt der Speicher in SaveBlock3 (GetVarPointer in
// src/event_data.c), weil SaveBlock1 voll ist. Die Nummern 0x4300-0x437F
// liegen hinter den FRLG-Vars (0x4200-0x42BF) und weit vor den
// Spezialvars (0x8000).
//
// Aufteilung wie bei den Flags: Kanto, Johto, Hoenn, regionsuebergreifend,
// mit je acht Reserveplaetzen dazwischen. Vars kosten zwei Byte statt
// einem Bit, deshalb ist der Block kleiner - wer nur ein Ja/Nein braucht,
// nimmt ein Flag.
// =====================================================================

#define OJ_VARS_START               0x4300
#define OJ_VARS_COUNT               128
#define OJ_VARS_END                 (OJ_VARS_START + OJ_VARS_COUNT - 1)

#define OJ_VARS_KANTO               (OJ_VARS_START + 0)     // 24 Plaetze
#define OJ_VARS_KANTO_SIZE          24
#define OJ_VARS_JOHTO               (OJ_VARS_START + 32)    // 40 Plaetze
#define OJ_VARS_JOHTO_SIZE          40
#define OJ_VARS_HOENN               (OJ_VARS_START + 80)    // 24 Plaetze
#define OJ_VARS_HOENN_SIZE          24
#define OJ_VARS_GLOBAL              (OJ_VARS_START + 112)   // 16 Plaetze
#define OJ_VARS_GLOBAL_SIZE         16

// ---------------------------------------------------------------------
// Kanto (OJ_VARS_KANTO + 0 bis + 23)
// ---------------------------------------------------------------------
// noch keine Eintraege

// ---------------------------------------------------------------------
// Johto (OJ_VARS_JOHTO + 0 bis + 39)
// ---------------------------------------------------------------------
// VM-Befugnisse als Bitmaske, siehe include/johto_permits.h.
#define VAR_JOHTO_PERMITS           (OJ_VARS_JOHTO + 0)
// Kein VAR_JOHTO_BADGES hier: das gibt es seit dem Kanto-Merge schon in
// constants/vars_frlg_hns.h, und der Trainerpass liest es bereits aus.
// Gefuellt wird es erst jetzt (src/johto_badges.c).
// Stand der Anreise aus Kanto, Gegenstueck zu VAR_HOENN_ARRIVAL_STATE.
#define VAR_JOHTO_ARRIVAL_STATE     (OJ_VARS_JOHTO + 1)

// ---------------------------------------------------------------------
// Hoenn (OJ_VARS_HOENN + 0 bis + 23)
// ---------------------------------------------------------------------
// Relocated Hoenn vars. vars.h keeps every Emerald var on its vanilla
// number, and vars_hns.h hands the same numbers to HnS content. Each of
// these was used by a live Hoenn script and by a live HnS script or by C
// at the same time. Examples: the Pokegear radio writes its weekly lucky
// number into VAR_OLDALE_RIVAL_STATE and VAR_JAGGED_PASS_STATE, and Trick
// House puzzle 5 overwrote VAR_SINJOH_STORYLINE. As with the flags, the
// Hoenn side moves so the HnS numbers stay put for upstream merges.
// was VAR_ALOLA_TRAVEL
#undef  VAR_TRICK_HOUSE_PUZZLE_3_STATE
#define VAR_TRICK_HOUSE_PUZZLE_3_STATE          (OJ_VARS_HOENN + 0)
// was VAR_ALOLA_STATE
#undef  VAR_TRICK_HOUSE_PUZZLE_4_STATE
#define VAR_TRICK_HOUSE_PUZZLE_4_STATE          (OJ_VARS_HOENN + 1)
// was VAR_SINJOH_STORYLINE
#undef  VAR_TRICK_HOUSE_PUZZLE_5_STATE
#define VAR_TRICK_HOUSE_PUZZLE_5_STATE          (OJ_VARS_HOENN + 2)
// was VAR_TRIGGER_ELM_ROCKET_CALL
#undef  VAR_WEATHER_INSTITUTE_STATE
#define VAR_WEATHER_INSTITUTE_STATE             (OJ_VARS_HOENN + 3)
// was VAR_NOBLE_WYRDEER
#undef  VAR_TRICK_HOUSE_PUZZLE_7_STATE_2
#define VAR_TRICK_HOUSE_PUZZLE_7_STATE_2        (OJ_VARS_HOENN + 4)
// was VAR_NOBLE_ARCANINE
#undef  VAR_SLATEPORT_FAN_CLUB_STATE
#define VAR_SLATEPORT_FAN_CLUB_STATE            (OJ_VARS_HOENN + 5)
// was VAR_NOBLE_KLEAVOR
#undef  VAR_MT_PYRE_STATE
#define VAR_MT_PYRE_STATE                       (OJ_VARS_HOENN + 6)
// was VAR_SAFFRON_CITY_STATE
#undef  VAR_JAGGED_PASS_ASH_WEATHER
#define VAR_JAGGED_PASS_ASH_WEATHER             (OJ_VARS_HOENN + 7)
// was VAR_SHUCKIE
#undef  VAR_GLASS_WORKSHOP_STATE
#define VAR_GLASS_WORKSHOP_STATE                (OJ_VARS_HOENN + 8)
// was VAR_SLOWPOKE_TAIL
#undef  VAR_METEOR_FALLS_STATE
#define VAR_METEOR_FALLS_STATE                  (OJ_VARS_HOENN + 9)
// was VAR_SPROUT_TOWER
#undef  VAR_SOOTOPOLIS_MYSTERY_EVENTS_STATE
#define VAR_SOOTOPOLIS_MYSTERY_EVENTS_STATE     (OJ_VARS_HOENN + 10)
// was VAR_VIRIDIAN_CITY_STATE
#undef  VAR_TRICK_HOUSE_PRIZE_PICKUP
#define VAR_TRICK_HOUSE_PRIZE_PICKUP            (OJ_VARS_HOENN + 11)
// was VAR_WILTON_ITEM_HNS
#undef  VAR_VICTORY_ROAD_1F_STATE
#define VAR_VICTORY_ROAD_1F_STATE               (OJ_VARS_HOENN + 12)
// was VAR_RADIO_LUCKY_ID
#undef  VAR_OLDALE_RIVAL_STATE
#define VAR_OLDALE_RIVAL_STATE                  (OJ_VARS_HOENN + 13)
// was VAR_RADIO_LUCKY_ID_HI
#undef  VAR_JAGGED_PASS_STATE
#define VAR_JAGGED_PASS_STATE                   (OJ_VARS_HOENN + 14)

// ---------------------------------------------------------------------
// Regionsuebergreifend (OJ_VARS_GLOBAL + 0 bis + 15)
// ---------------------------------------------------------------------
// noch keine Eintraege

#endif // GUARD_CONSTANTS_VARS_ORIGIN_JADE_H
