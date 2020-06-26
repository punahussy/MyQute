#include "idealistmodel.h"

IdeaListModel::IdeaListModel(QObject *parent)
    : QAbstractListModel(parent)
{
}

int IdeaListModel::rowCount(const QModelIndex &parent) const
{
    return ideas.size();
}

QVariant IdeaListModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    switch (role) {
        case ideaTextRole:
            return QVariant(QString("Shark with a gun"));
        case isDrawnRole:
            return QVariant(false);
    }

    return QVariant();
}

bool IdeaListModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (data(index, role) != value) {
        // FIXME: Implement me!
        emit dataChanged(index, index, QVector<int>() << role);
        return true;
    }
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
