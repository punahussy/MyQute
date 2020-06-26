#include “stdafx.h”
#include "ideagenerator.h"
#include <iostream>
#include <fstream>
#include <iomanip>

IdeaGenerator::IdeaGenerator(QObject *parent) : QObject(parent)
{

}

QString IdeaGenerator::generate()
{
    return "Hello world";
}

