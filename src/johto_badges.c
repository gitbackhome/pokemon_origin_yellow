#include "global.h"
#include "event_data.h"
#include "johto_badges.h"
#include "constants/vars.h"

// Johto badge system: a bitmask of its own in VAR_JOHTO_BADGES, separate
// from the badge flags FLAG_BADGE01-08 (Johto shares those with Kanto, and
// they are all set long before, after the Kanto league). Feeds obedience
// limits, gym gates, the trainer card and rematch scaling.

#if defined(POKEMON_HNS)

// Number of Johto badges (set bits in VAR_JOHTO_BADGES).
u32 GetJohtoBadgeCount(void)
{
    u32 i, count = 0;
    u16 mask = VarGet(VAR_JOHTO_BADGES);

    for (i = 0; i < 8; i++)
    {
        if (mask & (1 << i))
            count++;
    }
    return count;
}

// TRUE if the Johto badge with the given index (0 = Falkner ... 7 = Clair)
// has been earned.
bool32 HasJohtoBadge(u32 index)
{
    if (index >= 8)
        return FALSE;
    return (VarGet(VAR_JOHTO_BADGES) & (1 << index)) != 0;
}

// Special: badge index (0-7) in gSpecialVar_0x8004
void SetJohtoBadge(void)
{
    if (gSpecialVar_0x8004 < 8)
        VarSet(VAR_JOHTO_BADGES, VarGet(VAR_JOHTO_BADGES) | (1 << gSpecialVar_0x8004));
}

// Special: badge index (0-7) in gSpecialVar_0x8004, result into
// gSpecialVar_Result. Replaces the FLAG_BADGE0x_GET checks in Johto scripts.
void CheckJohtoBadge(void)
{
    gSpecialVar_Result = HasJohtoBadge(gSpecialVar_0x8004);
}

// Special: number of Johto badges into gSpecialVar_Result
void CountJohtoBadges(void)
{
    gSpecialVar_Result = GetJohtoBadgeCount();
}

#else

u32 GetJohtoBadgeCount(void) { return 0; }
bool32 HasJohtoBadge(u32 index) { return FALSE; }
void SetJohtoBadge(void) {}
void CheckJohtoBadge(void) { gSpecialVar_Result = FALSE; }
void CountJohtoBadges(void) { gSpecialVar_Result = 0; }

#endif
