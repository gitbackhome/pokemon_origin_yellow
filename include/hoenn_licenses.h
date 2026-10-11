#ifndef GUARD_HOENN_LICENSES_H
#define GUARD_HOENN_LICENSES_H

#include "constants/hoenn_licenses.h"

// HM licenses for Hoenn. The player has long mastered the field moves
// (Johto champion) but may only use them in Hoenn after official
// permission. Only the moves that gate progress are locked -- Fly and
// Flash stay free.

bool32 HasHoennLicense(u32 index);
bool32 HoennLicensesApply(void);   // TRUE if the player is currently in Hoenn
void SetHoennLicense(void);        // Special: index in gSpecialVar_0x8004
void CheckHoennLicense(void);      // Special: TRUE = allowed here

#endif // GUARD_HOENN_LICENSES_H
