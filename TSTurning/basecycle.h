#ifndef BASECYCLE_H
#define BASECYCLE_H

#include "ThorSerialize/Serialize.h"
#include "ThorSerialize/Serialize.tpp"
#include "ThorSerialize/Traits.h"
#include "ThorSerialize/JsonThor.h"

#include <string>
#include <sstream>
#include <iostream>
#include <QString>

class BaseCycle
{
public:
    BaseCycle(QString name="");

    friend class ThorsAnvil::Serialize::Traits<BaseCycle>;
public:
    QString operationName;
    QString CycleName;
private:
    bool spindleCW;
    bool useCoolant;
    bool useRPM;
    int Smax;
    int gear;
};

ThorsAnvil_MakeTrait(BaseCycle,gear);

#endif // BASECYCLE_H
