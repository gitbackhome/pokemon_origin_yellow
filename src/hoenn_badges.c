#include "global.h"
#include "event_data.h"
#include "hoenn_badges.h"

// Hoenn badge system: a bitmask of its own in VAR_HOENN_BADGES, separate
// from the badge flags FLAG_BADGE01-08 (which a champion has long had
// set). Feeds the gym gates, the trainer card and later the league
// trigger.

#if defined(POKEMON_HNS)

// Number of Hoenn badges (set bits in VAR_HOENN_BADGES).
u32 GetHoennBadgeCount(void)
{
    u32 i, count = 0;
    u16 mask = VarGet(VAR_HOENN_BADGES);

    for (i = 0; i < 8; i++)
    {
        if (mask & (1 << i))
            count++;
    }
    return count;
}

// TRUE if the Hoenn badge with the given index (0 = Roxanne ... 7 = Juan)
// has been earned.
bool32 HasHoennBadge(u32 index)
{
    if (index >= 8)
        return FALSE;
    return (VarGet(VAR_HOENN_BADGES) & (1 << index)) != 0;
}

// Special: badge index (0-7) in gSpecialVar_0x8004
void SetHoennBadge(void)
{
    if (gSpecialVar_0x8004 < 8)
        VarSet(VAR_HOENN_BADGES, VarGet(VAR_HOENN_BADGES) | (1 << gSpecialVar_0x8004));
}

// Special: badge index (0-7) in gSpecialVar_0x8004, result into
// gSpecialVar_Result. Replaces the FLAG_BADGE0x_GET checks in Hoenn
// scripts - under HnS those belong to the Johto/Kanto badges and are all
// set long before the player enters Hoenn.
void CheckHoennBadge(void)
{
    gSpecialVar_Result = HasHoennBadge(gSpecialVar_0x8004);
}

// Special: number of Hoenn badges into gSpecialVar_Result
void CountHoennBadges(void)
{
    gSpecialVar_Result = GetHoennBadgeCount();
}

#else

u32 GetHoennBadgeCount(void) { return 0; }
bool32 HasHoennBadge(u32 index) { return FALSE; }
void SetHoennBadge(void) {}
void CheckHoennBadge(void) { gSpecialVar_Result = FALSE; }
void CountHoennBadges(void) { gSpecialVar_Result = 0; }

#endif
