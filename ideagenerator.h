#ifndef IDEAGENERATOR_H
#define IDEAGENERATOR_H

#include <QObject>
#include <QString>

class IdeaGenerator : public QObject
{
    Q_OBJECT
public:
    explicit IdeaGenerator(QObject *parent = nullptr);

    Q_INVOKABLE QString generate();


signals:

};

#endif // IDEAGENERATOR_H
