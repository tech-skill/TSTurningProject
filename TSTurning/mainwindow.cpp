#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "settings.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    Settings s;
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

