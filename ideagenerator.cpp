#include "ideagenerator.h"

#include "idealistmodel.h"
#include <QFile>
#include <QTextStream>
#include <QRandomGenerator>


IdeaGenerator::IdeaGenerator(QObject *parent) : QObject(parent)
{

}

QString IdeaGenerator::generate()
{
    QFile nounsFile("nouns.txt");
    if (!nounsFile.open(QIODevice::ReadOnly | QIODevice::Text))
        return "Noun database not found \n";
    QFile adjFile("adjectives.txt");
    if (!adjFile.open(QIODevice::ReadOnly | QIODevice::Text))
        return "Adjective database not found \n";


    QList<QString> nouns;
    while (!nounsFile.atEnd()) {
        QByteArray line = nounsFile.readLine();
        nouns.append(line);
    }
    QList<QString> adjs;
    while (!nounsFile.atEnd()) {
        QByteArray line = nounsFile.readLine();
        adjs.append(line);
    }


    currentIdea = nouns.at(randomBetween(0, nouns.length()-1));

    nounsFile.close();
    adjFile.close();

    return currentIdea;

}

void IdeaGenerator::saveIdea(QString idea)
{
    const QString filename = "ideas.txt";
    QFile file(filename);

    if(file.open(QIODevice::Append | QIODevice::Text))
    {
        QTextStream writeStream(&file);
        writeStream << idea ;
        file.close();
    }

}

int IdeaGenerator::randomBetween(int min, int max)
{
    int result = (rand() % ((max + 1) - min) + min);
    return result;
}


