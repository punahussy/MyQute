#include "ideagenerator.h"

#include "idealistmodel.h"
#include <QFile>
#include <QTextStream>


IdeaGenerator::IdeaGenerator(QObject *parent) : QObject(parent)
{

}

QString IdeaGenerator::generate()
{
    QFile file("in.txt");
       if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
           return "Word database not found";

       while (!file.atEnd()) {
           QByteArray line = file.readLine();
       }

    currentIdea = "Hello world";

    return currentIdea;

}

void IdeaGenerator::saveIdea(QString idea)
{
    const QString filename = "ideas.txt";
    QFile file(filename);

    if(file.open(QIODevice::Append | QIODevice::Text))
    {
        QTextStream writeStream(&file);
        writeStream << idea << "\n";
        file.close();
    }

}

