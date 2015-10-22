import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

Item {
    property alias loaderItem: loader.item
    anchors.fill: parent
    ColumnLayout {
        anchors.fill: parent
        GroupBox {
            Layout.fillHeight: true
            Layout.fillWidth: true
            title: qsTr("Input Selector")
            RowLayout {
                anchors.fill: parent
                Text {
                    Layout.fillWidth: true
                    text: qsTr("Configurator source:")
                }
                ComboBox {
                    id: comboBox
                    Layout.fillWidth: true
                    model: ListModel {
                        id: cbItems
                        ListElement { text: "Constant String"; file: "ConstantString.qml" }
                        ListElement { text: "UDP Packet"; file: "UDPPacket.qml" }
                        ListElement { text: "CoAP Packet"; file: "CoAPPacket.qml" } // TODO
                        ListElement { text: "MQTT Topic"; file: "MQTTTopic.qml" } // TODO
                        ListElement { text: "HTTP Source"; file: "HTTPSource.qml" } // TODO
                    }
                }
            }
        }
        GroupBox {
            Layout.fillHeight: true
            Layout.fillWidth: true
            title: qsTr("Input Configurator")
            Loader {
                id: loader
                anchors.fill: parent
                source: cbItems.get(comboBox.currentIndex).file
            }
        }
    }
}
