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

    QList<QString> nouns;
    while (!nounsFile.atEnd()) {
        QString line = nounsFile.readLine();
        nouns.append(line);
    }
    nounsFile.close();
    QString noun = nouns.at(randomBetween(0, nouns.length()-1));


    QFile adjFile("adjectives.txt");
    if (!adjFile.open(QIODevice::ReadOnly | QIODevice::Text))
        return "Adjective database not found \n";

    QList<QString> adjs;
    while (!adjFile.atEnd()) {
        QString line = adjFile.readLine();
        adjs.append(line);
    }
    adjFile.close();
    QString adjective = adjs.at(randomBetween(0, adjs.length() - 1));

    currentIdea = adjective.append(noun).toUpper();

    return currentIdea;

}

void IdeaGenerator::saveIdea()
{
    const QString filename = "ideas.txt";
    QFile file(filename);

    if(file.open(QIODevice::Append | QIODevice::Text))
    {
        QTextStream writeStream(&file);
        if (!currentIdea.isEmpty())
            writeStream << currentIdea.replace('\n', ' ') << '\n';
        else
            writeStream << "A toad with a flamethrower \n";
        file.close();
    }

}

int IdeaGenerator::randomBetween(int min, int max)
{
    int result = (rand() % ((max + 1) - min) + min);
    return result;
}


