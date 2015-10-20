import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Item {
    width: 540
    height: 960
    property alias buttonAmperage: buttonAmperage
    property alias buttonVoltage: buttonVoltage
    property alias buttonPower: buttonPower
    property alias buttonSemDescription: buttonDescription
    property alias buttonTemperatureObservation: buttonTemperatureObservation
    property alias buttonHeatMeterTemperature: buttonHeatMeterTemperature
    property alias textAreaSemDescription: textAreaDescription
    property alias textFieldSemDescription: textFieldDescription
    property alias buttonReceive: buttonReceive
    property var tabView: tabView
    property alias textAreaDescriptionText: textAreaDescription.text
    property string generatedConfig: ""
    property alias buttonGenerate: generateButton

    ColumnLayout {
        anchors.fill: parent
        GroupBox {
            Layout.fillWidth: true
            Layout.fillHeight: true
            title: qsTr("Semantic Description")
            ColumnLayout {
                anchors.fill: parent
                Button {
                    id: buttonAmperage
                    Layout.fillWidth: true
                    text: 'https://raw.githubusercontent.com/semiotproject/simulator-electric-meters/master/src/main/resources/ru/semiot/simulator/electricmeter/amperage.ttl'
                }
                Button {
                    id: buttonVoltage
                    Layout.fillWidth: true
                    text: 'https://raw.githubusercontent.com/semiotproject/simulator-electric-meters/master/src/main/resources/ru/semiot/simulator/electricmeter/voltage.ttl'
                }
                Button {
                    id: buttonDescription
                    Layout.fillWidth: true
                    text: 'https://raw.githubusercontent.com/semiotproject/simulator-electric-meters/master/src/main/resources/ru/semiot/simulator/electricmeter/description.ttl'
                }
                Button {
                    id: buttonPower
                    Layout.fillWidth: true
                    text: 'https://raw.githubusercontent.com/semiotproject/simulator-electric-meters/master/src/main/resources/ru/semiot/simulator/electricmeter/power.ttl'
                }
                Button {
                    id: buttonTemperatureObservation
                    Layout.fillWidth: true
                    text: 'https://raw.githubusercontent.com/semiotproject/semiot-platform/master/device-proxy-service-drivers/semiot-device-prototype/src/main/resources/ru/semiot/platform/drivers/semiot/device/prototype/temperatureObservation.ttl'
                }
                Button {
                    id: buttonHeatMeterTemperature
                    Layout.fillWidth: true
                    text: 'https://raw.githubusercontent.com/semiotproject/semiot-platform/master/device-proxy-service-drivers/semiot-device-prototype/src/main/resources/ru/semiot/platform/drivers/semiot/device/prototype/descriptionHeatMeterTemperature.ttl'
                }
                RowLayout {
                    Layout.fillWidth: true
                    TextField {
                        id: textFieldDescription
                        Layout.fillWidth: true
                        placeholderText: qsTr("Enter semantic description address")
                    }
                    Button {
                        id: buttonReceive
                        Layout.fillWidth: true
                        text: qsTr("Receive")
                        enabled: textFieldDescription.text!=''
                    }
                }
                TextArea {
                    id: textAreaDescription
                    enabled: (text!=='')
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    readOnly: true
                }
            }
        }
        GroupBox {
            title: qsTr("Input Variables")
            Layout.fillWidth: true
            Layout.fillHeight: true
            enabled: (textAreaDescription.text!=='')
            TabView {

            }

            TabView {
                id: tabView
                anchors.fill: parent
                /*
                delegate: RowLayout {
                    Text {
                        text: name
                    }
                    TextField {
                        placeholderText: qsTr("Enter value")
                    }
                }
                */
            }
        }
        GroupBox {
            title: qsTr("Output Configuration")
            Layout.fillWidth: true
            Layout.fillHeight: true
            Button {
                id: generateButton
                width: parent.width
                text: qsTr("Set Configuration")
            }
        }
    }


}

