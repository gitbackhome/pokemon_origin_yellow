#ifndef GUARD_JOHTO_BADGES_H
#define GUARD_JOHTO_BADGES_H

#include "global.h"

// Johto badge system: a bitmask of its own in VAR_JOHTO_BADGES, separate
// from FLAG_BADGE01-08. Those are shared by Kanto and Johto - Brock sets
// FLAG_BADGE01_GET, and so does Falkner. After the Kanto league all eight
// are set, so a badge check in Johto would always pass.
// Built the same way as the Hoenn badge system.

u32 GetJohtoBadgeCount(void);
bool32 HasJohtoBadge(u32 index);   // 0 = Falkner ... 7 = Clair
void SetJohtoBadge(void);          // Special: index in gSpecialVar_0x8004
void CheckJohtoBadge(void);        // Special: index in, result into VAR_RESULT
void CountJohtoBadges(void);       // Special: count into VAR_RESULT

#endif // GUARD_JOHTO_BADGES_H
