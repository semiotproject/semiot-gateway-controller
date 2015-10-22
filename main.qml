import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Gateway Configurator")

    function generateConfig() {
        var configArray = []
        for (var i=0;i<mainForm.tabView.count;i++) {
            var title = mainForm.tabView.getTab(i).title
            var cfg = "TODO"//mainForm.tabView.getTab(i).item.loaderItem.config // FIXME
            configArray.push([title+":"+cfg])
        }
        return configArray
    }

    function indexOfTabByTitle(title) {
        for (var i=0;i<mainForm.tabView.count;i++) {
            if (mainForm.tabView.getTab(i).title===title) {
                return i;
            }
        }
        return -1
    }

    function tabsClear() {
        for (var i=0;i<mainForm.tabView.count;i++) {
            mainForm.tabView.removeTab(i)
        }
    }

    function parseVarsFromText() {
        var text = mainForm.textAreaDescriptionText
        var re = /\${[^}]+}/g;
        var m;
        tabsClear()
        do {
            m = re.exec(text);
            if (m) {
                var parsedVar = m.toString()
                if (indexOfTabByTitle(parsedVar)<0) {
                    mainForm.tabView.addTab(parsedVar,viewComp);
                }
            }
        } while (m);
    }

    function getSemDescriptionFromUrl() {
        var url = mainForm.textFieldSemDescription.text
        var doc = new XMLHttpRequest();
        doc.onreadystatechange = function() {
            if (doc.readyState == XMLHttpRequest.DONE) {
                var responseText = doc.responseText
                mainForm.textAreaSemDescription.text = responseText
                //parseVarsFromText()
            }
        }
        doc.open("get", url);
        doc.setRequestHeader("Content-Encoding", "UTF-8");
        doc.send();
    }

    Component {
        id:viewComp
        Configurator {
            id: configurator
        }
    }

    MainForm {
        id: mainForm
        anchors.fill: parent
        buttonAmperage.onClicked: {
            textFieldSemDescription.text = buttonAmperage.text
        }
        buttonVoltage.onClicked: {
            textFieldSemDescription.text = buttonVoltage.text
        }
        buttonPower.onClicked: {
            textFieldSemDescription.text = buttonPower.text
        }
        buttonSemDescription.onClicked: {
            textFieldSemDescription.text = buttonSemDescription.text
        }
        buttonHeatMeterTemperature.onClicked: {
            textFieldSemDescription.text = buttonHeatMeterTemperature.text
        }
        buttonTemperatureObservation.onClicked: {
            textFieldSemDescription.text = buttonTemperatureObservation.text
        }

        buttonReceive.onClicked:  {
            getSemDescriptionFromUrl()
        }
        onTextAreaDescriptionTextChanged: {
            parseVarsFromText()
        }
        buttonGenerate.onClicked: {
            generatedConfig = generateConfig().toString()
            messageDialog.show(generatedConfig)
        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("Resulting Dialog")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}

