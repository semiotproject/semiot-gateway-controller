# SemIoT Gateway Controller

SemIoT Gateway Client application provides access to SemIoT Gateway settings.

## Discover Gateways

Client should provide codeontrol to discover new gateways and saving the results.

## Sign In

After selecting the gateway, you should login.
Default login/password:
`admin/password`
After first login password will be automatically changed to new randomly generated.
You can login to local gateway or to remote one.

## Users control
You can add new user and prove some access to some resources.
*future-work: You can receive requests for permissions from users.

## Devices registry
You have the registry where you can assign any resource with with some semantic description.
Resources described with the networks, measurement units, etc.
You can scan for some templates available in public resources registry and specify some params.
You also can save to gateway registry remote resources.

## Configuring router:
WLAN.
LAN.
Internet connection.
Remote configuration.

## Status
You can configure your router domain name or use [duckdns](http://duckdns.org/).

## Screenshots
### Users List
![UsersList](https://github.com/semiotproject/semiot-gateway-controller/raw/master/shots/accounts_page_shot.png)
### Gateways List
![GatewaysList](https://github.com/semiotproject/semiot-gateway-controller/raw/master/shots/gateways_page_shot.png)
### Resources List
![ResourcesList](https://github.com/semiotproject/semiot-gateway-controller/blob/master/shots/resources_page_shot.png)

# Usage example

Sergei is a IoT-enthusiast. He wants to add intellectual features to his apartment.
He've heard about SemIoT project and wants to try it.
He've bought an esp8266 wifi module, a dht22 sensor, a battery. He already have a Raspberry Pi 2 and an usb-wifi-dongle.

He've prepeared his first IoT-sensor with the [semiot-device-prototype](https://github.com/semiotproject/semiot-device-prototype) with the esp8266 wifi module, the dht22 sensor and the battery.

After that he attached usb-wifi-dongle to his Raspberry Pi 2 and prepeared the [semiot-gateway](https://github.com/semiotproject/semiot-gateway) software to his Raspberry Pi.

Right now he can use his Raspberry Pi as regular home router and also control the router setting via [semiot-gateway-controller](https://github.com/semiotproject/semiot-gateway) mobile app.
But there are additional features for his router right now.

Now he can observe his first IoT-sensor via the [semiot-gateway](https://github.com/semiotproject/semiot-gateway) router with the [semiot-gateway-controller](https://github.com/semiotproject/semiot-gateway). With the simple but powerful interface he can share the sensor data with global web network.

He also could discover additional sensors/actuators via any protocol supported by his upgradable Raspberry Pi 2 (e.g., bluetooth, wifi, ethernet, RS-485, CAN, etc).

After that it is possible to interconnect different protocol-based streams via the [node-red](https://github.com/node-red/node-red), [node-sgs](https://github.com/chheplo/node-sgs) and send the data to the [SemIoT-platform](https://github.com/semiotproject/semiot-platform) for the analysis.


# User stories

As user, I want to discover new devices.
  ..to have an option to connect new device to the gateway with specified connection options.
  ..to have a list of active connected devices
  .. to share access with other clients