#ifndef IDEALISTMODEL_H
#define IDEALISTMODEL_H

#include <QAbstractListModel>

class IdeaListModel : public QAbstractListModel
{
    Q_OBJECT

public:
    explicit IdeaListModel(QObject *parent = nullptr);

    // Basic functionality:
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

private:
};

#endif // IDEALISTMODEL_H
