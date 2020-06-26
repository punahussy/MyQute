#ifndef IDEAGENERATOR_H
#define IDEAGENERATOR_H

#include <QObject>
#include <QString>

class IdeaGenerator : public QObject
{
    Q_OBJECT
public:
    explicit IdeaGenerator(QObject *parent = nullptr);

    QString currentIdea;

    Q_INVOKABLE QString generate();
    Q_INVOKABLE void saveIdea(QString idea);


signals:

};

#endif // IDEAGENERATOR_H
