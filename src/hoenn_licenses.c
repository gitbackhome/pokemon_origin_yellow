#include "global.h"
#include "event_data.h"
#include "overworld.h"
#include "level_scaling.h"
#include "hoenn_licenses.h"

// A bitmask of its own in VAR_HOENN_LICENSES, independent of the Johto
// badges. The lock only applies inside Hoenn (IsHoennMapsec); in Johto and
// Kanto the badge checks from field_move.c still apply.

#if defined(POKEMON_HNS)

// TRUE if the HM license with the given index (LIC_*) has been granted.
bool32 HasHoennLicense(u32 index)
{
    if (index >= LIC_COUNT)
        return FALSE;
    return (VarGet(VAR_HOENN_LICENSES) & (1 << index)) != 0;
}

// TRUE if the current map is in Hoenn, i.e. the licenses are in effect.
bool32 HoennLicensesApply(void)
{
    return IsHoennMapsec(gMapHeader.regionMapSectionId);
}

// Special: license index (0 - LIC_COUNT-1) in gSpecialVar_0x8004
void SetHoennLicense(void)
{
    if (gSpecialVar_0x8004 < LIC_COUNT)
        VarSet(VAR_HOENN_LICENSES, VarGet(VAR_HOENN_LICENSES) | (1 << gSpecialVar_0x8004));
}

// Special: license index in gSpecialVar_0x8004. Result into
// gSpecialVar_Result: TRUE = may be used here. Always TRUE outside of
// Hoenn so the scripts in Johto and Kanto run unchanged.
void CheckHoennLicense(void)
{
    gSpecialVar_Result = (!HoennLicensesApply() || HasHoennLicense(gSpecialVar_0x8004));
}

#else

bool32 HasHoennLicense(u32 index) { return TRUE; }
bool32 HoennLicensesApply(void) { return FALSE; }
void SetHoennLicense(void) {}
void CheckHoennLicense(void) { gSpecialVar_Result = TRUE; }

#endif
