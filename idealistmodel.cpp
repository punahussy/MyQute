#include "idealistmodel.h"

#include <QFile>

IdeaListModel::IdeaListModel(QObject *parent)
    : QAbstractListModel(parent)
{
    prepareList();
}

int IdeaListModel::rowCount(const QModelIndex &parent) const
{
    return ideas.size();
}

QVariant IdeaListModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    const Item item = ideas.at(index.row());
    switch (role) {
        case ideaTextRole:
            return QVariant(item.ideaText);
        case isDrawnRole:
            return QVariant(item.isDrawn);
    }

    return QVariant();
}

bool IdeaListModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    return false;
}

Qt::ItemFlags IdeaListModel::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::NoItemFlags;

    return Qt::ItemIsEditable; // FIXME: Implement me!
}

QHash<int, QByteArray> IdeaListModel::roleNames() const {
    QHash<int, QByteArray> names;
    names[ideaTextRole] = "ideaText";
    names[isDrawnRole] = "isDrawn";
    return names;
}

void IdeaListModel::prepareList()
{
    ideas.clear();
    QFile file("ideas.txt");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    return;

    while (!file.atEnd()) {
        QByteArray line = file.readLine();
        QList<QByteArray> lines = line.split(' ');
        ideas.append({lines.at(1), lines.at(0) == "Finished" ? true : false});
    }
    file.close();
}
