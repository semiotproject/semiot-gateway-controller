import QtQuick 2.5
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    width: 540
    height: 960
    title: qsTr("Gateway Controller")
    TabView {
        anchors.fill: parent
        Tab {
            title: "Accounts"
            AccountsPage {
                id: accounts_page
                model: accounts_model
            }
        }
        Tab {
            title: "Resources"
            ResourcesPage {
                id: resources_page
                model: resources_model
            }
        }
        Tab {
            title: "Gateways"
            GatewaysPage {
                id: gateways_page
                model: gateways_model
            }

        }
    }
    // dummy models:
    ListModel {
        id: accounts_model
        ListElement {
            name: "Alexey Andreyev"
            info: "awesomenickname@domain.org"
        }
        ListElement {
            name: "Aleksei Andreev"
            info: "boringnickname@corpdomain.com"
        }
        ListElement {
            name: "Alexey"
            info: "strangenickname@domain.ru"
        }
    }
    ListModel {
        id: gateways_model
        ListElement {
            name: "Home Gateway"
            info: "127.0.0.1; asewomegateway.duckdns.org"
        }
        ListElement {
            name: "Work Gateway"
            info: "asewomegateway.corpdomain.com"
        }
        ListElement {
            name: "Public Gateway"
            info: "awesomegateway.domain.org"
        }
    }
    ListModel {
        id: resources_model
        ListElement {
            name: "DHT22/Temperature"
            info: "coap://127.0.0.2:5683/\ncoap://asewomegateway.duckdns.org:5683/dht22/temperature"
        }
        ListElement {
            name: "DHT22/Humidity"
            info: "coap://127.0.0.2:5683/\ncoap://asewomegateway.duckdns.org:5683/dht22/humidity"
        }
    }

}

