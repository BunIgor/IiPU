#ifndef KEYWORK_H
#define KEYWORK_H

#include <QObject>
#include <QDebug>
#include "systcom.h"
#include <QTimer>

class KeyWork : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool capsOn READ getCaps)
    Q_PROPERTY(bool numOn READ getNum)
public:
    explicit KeyWork(QObject *parent = 0);

    Q_INVOKABLE void GoriAndPogasni();
    Q_INVOKABLE void getState();
<<<<<<< HEAD
    Q_INVOKABLE void InversCapsAndNum();
=======
>>>>>>> 6c065764ec1e51f8f393c6073d6b976630dcfd7b

    bool getCaps();
    bool getNum();
signals:
    void m_end();

public slots:
    void m_delay();

private:
    bool capsOn;
    bool numOn;
    QTimer* m_timer;

};

#endif // KEYWORK_H
