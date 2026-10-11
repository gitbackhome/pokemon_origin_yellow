#include "global.h"
#include "event_data.h"
#include "overworld.h"
#include "string_util.h"
#include "johto_permits.h"
#include "hoenn_licenses.h"
#include "constants/region_map_sections.h"
#include "constants/vars_origin_jade.h"

// A bitmask of its own in VAR_JOHTO_PERMITS, independent of FLAG_BADGE01-08.
// Kanto and Johto share those: Brock sets FLAG_BADGE01_GET, and so does
// Falkner. A player coming from Kanto has all eight - so a badge check in
// Johto would always pass. The lock only applies inside Johto
// (IsJohtoMapsec); in Hoenn the licenses apply, in Kanto the FRLG badge
// thresholds from field_move.c.

#if defined(POKEMON_HNS)

// TRUE if the map section belongs to Johto.
bool32 IsJohtoMapsec(u32 mapSecId)
{
    // Contiguous Johto block of the HnS map section list (New Bark Town to
    // Whirl Islands); Routes 26/27/28, Tohjo Falls, Mt. Silver and the
    // Victory Road to the Johto league are part of it.
    return mapSecId >= JOHTO_MAPSEC_START && mapSecId <= JOHTO_MAPSEC_END;
}

// TRUE if the HM permit with the given index (PERM_*) has been granted.
bool32 HasJohtoPermit(u32 index)
{
    if (index >= PERM_COUNT)
        return FALSE;
    return (VarGet(VAR_JOHTO_PERMITS) & (1 << index)) != 0;
}

// Arrival corridor from Kanto: Route 26, Route 27 and Tohjo Falls.
// The permits do NOT apply here. Route 27 can only be crossed with Surf,
// and the permit for it is handed out by Morty - the fourth badge, deep in
// Johto. With the lock in place the player could never reach New Bark Town.
// On the way back to the league the exception goes unnoticed: by then all
// permits have long been handed out.
static bool32 IsJohtoArrivalCorridor(u32 mapSecId)
{
    return mapSecId == MAPSEC_ROUTE_26
        || mapSecId == MAPSEC_ROUTE_27
        || mapSecId == MAPSEC_TOHJO_FALLS;
}

// TRUE if the current map is in Johto outside the arrival corridor, i.e.
// the permits are in effect.
bool32 JohtoPermitsApply(void)
{
    u32 mapSecId = gMapHeader.regionMapSectionId;

    if (IsJohtoArrivalCorridor(mapSecId))
        return FALSE;
    return IsJohtoMapsec(mapSecId);
}

// Special: permit index (0 - PERM_COUNT-1) in gSpecialVar_0x8004
void SetJohtoPermit(void)
{
    if (gSpecialVar_0x8004 < PERM_COUNT)
        VarSet(VAR_JOHTO_PERMITS, VarGet(VAR_JOHTO_PERMITS) | (1 << gSpecialVar_0x8004));
}

#else

bool32 IsJohtoMapsec(u32 mapSecId) { return FALSE; }
bool32 HasJohtoPermit(u32 index) { return TRUE; }
bool32 JohtoPermitsApply(void) { return FALSE; }
void SetJohtoPermit(void) {}

#endif

// Special: index in gSpecialVar_0x8004. Result into gSpecialVar_Result:
// TRUE = may be used here. The indices of LIC_* and PERM_* are identical,
// so one is enough for both regions. Always TRUE outside of Hoenn and
// Johto so the scripts in Kanto run unchanged.
void CheckFieldPermission(void)
{
    if (HoennLicensesApply())
        gSpecialVar_Result = HasHoennLicense(gSpecialVar_0x8004);
    else if (JohtoPermitsApply())
        gSpecialVar_Result = HasJohtoPermit(gSpecialVar_0x8004);
    else
        gSpecialVar_Result = TRUE;
}

// Special: puts the term of the current region into STR_VAR_2 so the
// refusal text does not have to be written twice. Both German terms are
// feminine, so the sentence structure stays the same.
void BufferFieldPermissionTerm(void)
{
#if GERMAN
    static const u8 sText_HoennTerm[] = _("Erlaubnis");
    static const u8 sText_JohtoTerm[] = _("Befugnis");
#else
    static const u8 sText_HoennTerm[] = _("licence");
    static const u8 sText_JohtoTerm[] = _("permit");
#endif

    if (JohtoPermitsApply())
        StringCopy(gStringVar2, sText_JohtoTerm);
    else
        StringCopy(gStringVar2, sText_HoennTerm);
}
