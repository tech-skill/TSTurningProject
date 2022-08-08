#define CATCH_CONFIG_RUNNER
#include <catch.hpp>
#include <QtGui/QGuiApplication>

// Setup of test project from: https://machinekoder.com/qt-unit-testing-catch-trompeloeil/

int main(int argc, char** argv)
{
    QGuiApplication app(argc, argv);
    return Catch::Session().run(argc, argv);
}
