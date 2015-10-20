import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

RowLayout {
    property string config
    anchors.fill: parent
    Text {
        Layout.fillWidth: true
        text: qsTr("Constant String value:")
    }
    TextField {
        Layout.fillWidth: true
        placeholderText: qsTr("Enter your string here")
        text: config
    }
}
