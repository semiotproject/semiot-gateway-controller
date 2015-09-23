import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4

Item {
    id: root
    property alias list_view_item: list_view
    //property variant internalModel
    property alias model: list_view.model
    property real margins_value: 10
    ListView {
        id: list_view
        anchors.fill: parent
        anchors.margins: margins_value
        model: parent.internalModel
        delegate: Item {
            width: list_view.width
            height: 100
            Rectangle {
                anchors.fill: parent
                color: "white"
            }
            RowLayout {
                anchors.fill: parent
                anchors.margins: margins_value
                spacing: margins_value
                Item {
                    width: height
                    height: parent.height-30
                    Rectangle {
                        color: "violet"
                        radius: height
                        anchors.fill: parent
                    }
                }
                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    ColumnLayout {
                        anchors.fill: parent
                        Item {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Rectangle {
                                visible: false
                                anchors.fill: parent
                                color: "red"
                            }
                        }
                        Text {
                            text: name
                        }
                        Text {
                            text: info
                            color: "grey"
                        }
                        Item {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Rectangle {
                                visible: false
                                anchors.fill: parent
                                color: "red"
                            }
                        }

                    }
                }
            }
        }
    }

}

