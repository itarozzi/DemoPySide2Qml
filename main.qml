import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

ApplicationWindow {

//    Material.theme: Material.Dark
//    Material.accent: Material.Purple

    width: 480
    height: 320
    visible: true
    title: qsTr("Hello World")


//    color: "#222222"


//    Button {
//        anchors.centerIn: parent
//        text: "button1"
//    }

    Column {
           anchors.centerIn: parent

           RadioButton { text: qsTr("Small") }
           RadioButton { text: qsTr("Medium");  checked: true }
           RadioButton { text: qsTr("Large") }
       }

}
