#ifndef IDEALISTMODEL_H
#define IDEALISTMODEL_H

#include <QAbstractListModel>

class IdeaListModel : public QAbstractListModel
{
    Q_OBJECT

public:
    explicit IdeaListModel(QObject *parent = nullptr);

    enum {
        isDrawnRole = Qt::UserRole,
        ideaTextRole
    };

    // Basic functionality:
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

    // Editable:
    bool setData(const QModelIndex &index, const QVariant &value,
                 int role = Qt::EditRole) override;

    Qt::ItemFlags flags(const QModelIndex& index) const override;

    virtual QHash<int, QByteArray> roleNames() const override;

    Q_INVOKABLE void prepareList();

private:
    struct Item {
        QString ideaText;
        QVariant isDrawn;
    };
    QList<Item> ideas;
};

#endif // IDEALISTMODEL_H
