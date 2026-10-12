#ifndef GUARD_LEVEL_SCALING_H
#define GUARD_LEVEL_SCALING_H

#include "global.h"

struct Trainer;

// Level scaling for Hoenn and Johto, rules in include/config/hoenn_scaling.h
// and include/config/johto_scaling.h. Pass-throughs everywhere else.
bool32 LevelScalingActive(void);
u8 ScaleWildMonLevel(u8 level);
u8 ScaleTrainerMonLevel(const struct Trainer *trainer, u8 level, u8 partyMaxLevel);
u16 ScaleTrainerMonSpecies(u16 species, u8 scaledLevel);

// Not tied to scaling: also used by the region map, location names and HM licenses.
bool32 IsHoennMapsec(u32 mapSecId);
void TrySetHoennVisitedFlag(void);

#endif // GUARD_LEVEL_SCALING_H
