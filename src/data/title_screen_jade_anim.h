// Origin Jade: color table of the (currently disabled) lightning animation.
// WARNING: after the quality upgrade (0209) there are NO exclusive beam
// colors anymore - re-enabling it (JADE_TITEL_ANIMATION TRUE) first
// requires an exclusive refit of the assets with the fitting tool,
// otherwise stray pixels flicker across the whole image.
// Placeholder entry so the disabled function still compiles.

struct JadeAnimColor
{
    u16 slot;
    u16 farbe;
};

static const struct JadeAnimColor sJadeStrahlen[] =
{
    { 0x08F, 0x1D02 },
};
