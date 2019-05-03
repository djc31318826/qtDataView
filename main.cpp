#include <QtWidgets/QApplication>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtCharts>
#include<qchartview.h>
#include<qdebug.h>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    QQmlContext *ctx= engine.rootContext();
    QObject *pObj=engine.rootObjects().at(0);
    QObjectList List;
    List=pObj->children();
    for (int i=0;i<List.size();i++) {
        List.at(i)->dumpObjectInfo();
    }
    //QChartView *pView=pObj->findChildren<QChartView*>().at(0);
    //pView->setRubberBand(QChartView::RectangleRubberBand);
    //qDebug()<<pView;
    QList<QChart*> list1=pObj->findChildren<QChart*>();
    qDebug()<<list1.size();

    QList<QPushButton*> list2=pObj->findChildren<QPushButton*>();
    qDebug()<<list2.size();


    //QChart *pChart=pObj->findChildren<QChart*>();
    //pView->setRubberBand(QChartView::RectangleRubberBand);
    //qDebug()<<pChart;

    return app.exec();
}
