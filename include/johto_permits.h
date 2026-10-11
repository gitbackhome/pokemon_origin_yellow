#ifndef GUARD_JOHTO_PERMITS_H
#define GUARD_JOHTO_PERMITS_H

#include "constants/johto_permits.h"

// HM permits for Johto. The player has long mastered the field moves
// (Kanto champion) but may only use them in Johto after receiving the
// matching permit -- it is handed out together with the matching Johto
// badge.
//
// A bitmask of its own is needed because Kanto and Johto share
// FLAG_BADGE01-08: after the Kanto league all eight are set, so a badge
// check in Johto would always pass. Built the same way as the Hoenn
// licenses.

bool32 HasJohtoPermit(u32 index);
bool32 JohtoPermitsApply(void);     // TRUE if the player is currently in Johto
bool32 IsJohtoMapsec(u32 mapSecId);
void SetJohtoPermit(void);          // Special: Index in gSpecialVar_0x8004

// Cross-region: checks the license in Hoenn, the permit in Johto,
// otherwise always TRUE.
void CheckFieldPermission(void);    // Special: index in gSpecialVar_0x8004
void BufferFieldPermissionTerm(void); // Special: the region's term into STR_VAR_2

#endif // GUARD_JOHTO_PERMITS_H
