#include "basecycle.h"

BaseCycle::BaseCycle(QString name):
    spindleCW(false),
    useCoolant(false),
    useRPM(true),
    Smax(1500),
    gear(1)
{
    CycleName = name;
}

