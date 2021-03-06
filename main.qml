import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtCharts 2.3
ApplicationWindow {
    id:root

    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    property LineSeries line1
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
        Button
        {
            id:addLine
            text: "新加曲线"
            onClicked:
            {
                line1=chartView1.createSeries(ChartView.SeriesTypeLine,"test",xAxis,yAxis);
                line1.append(10,2);
                line1.append(1,5);
            }
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
        y:row1.y+row1.height
        x:0
        width:root.width
        height: root.height-row1.height
        //height:500
       //width:root.width
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
            theme: ChartView.ChartThemeDark

    }
    Button{
        id:test1;
    }
    //}
    Component.onCompleted: {
        console.log(chartView1.width,chartView1.height,row1.height);
    }
}
