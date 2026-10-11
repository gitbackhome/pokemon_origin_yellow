#ifndef GUARD_LEVEL_SCALING_H
#define GUARD_LEVEL_SCALING_H

#include "global.h"

struct Trainer;

// Dynamic level scaling for Hoenn and Johto
// (see include/config/hoenn_scaling.h and include/config/johto_scaling.h).
// The map section of the current map decides which rule applies.
// Outside both regions, or with scaling switched off, all functions are
// no-op pass-throughs - Kanto thus keeps its hand-set level curve.
bool32 LevelScalingActive(void);
u8 ScaleWildMonLevel(u8 level);
u8 ScaleTrainerMonLevel(const struct Trainer *trainer, u8 level, u8 partyMaxLevel);
u16 ScaleTrainerMonSpecies(u16 species, u8 scaledLevel);

// Pure geography or Hoenn flags - independent of scaling and also used by
// the region map, location names, HM licenses and sprites.
bool32 IsHoennMapsec(u32 mapSecId);
void TrySetHoennVisitedFlag(void);

#endif // GUARD_LEVEL_SCALING_H
