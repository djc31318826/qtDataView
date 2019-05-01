import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtCharts 2.3
Window {
    id:root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
//Column
//{
    Row
    {
        id:row1
        spacing: 2
        Button
        {
            id:openFile
            text: "Open"
        }
    }
    ChartView
    {
        id:chartView1
        //anchors.fill: parent
        anchors.top: row1.bottom
        anchors.bottom: root.bottom
       anchors.left: root.left
       anchors.right: root.right
        //height:500
        ValueAxis{
            id:xAxis
            min:-10
            max:10
        }
        ValueAxis{
            id:yAxis
            min:-10
            max:10
        }
            LineSeries
            {
                id:series1
                axisX:xAxis
                axisY:yAxis
                XYPoint{x:0;y:10}
                XYPoint{x:1;y:2}
                XYPoint{x:2;y:3}
            }
        }
    //}
}
