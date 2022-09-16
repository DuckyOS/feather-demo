import QtQuick 2.15
import QtQuick.Window 2.15
import Ducky.Feather 1.0

ApplicationWindow {
    initialPage: Page {
        PageHeader {
            id: txt1
            title: "Feather Toolkit"
        }
        Button {
            id: btn1
            text: "Page Pop Demo"
            anchors.top: txt1.bottom
            anchors.topMargin: txt1.height / 2
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(anotherPage)
        }
        Button {
            id: btn2
            text: "ListView Demo"
            anchors.top: btn1.bottom
            anchors.topMargin: txt1.height / 2
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: pageStack.push(listPageComponent)
        }
    }

    property Page apage: null

    Component {
        id: anotherPage
        Page {
            id: page1
            Component.onCompleted: apage = page1;
            Button {
                text: "Forward"
                anchors.centerIn: parent
                onClicked: pageStack.push(anotherPage2)
            }
        }
    }

    Component {
        id: anotherPage2
        Page {
            id: page2
            Button {
                text: "Back"
                anchors.centerIn: parent
                onClicked: pageStack.pop(apage)
            }
        }
    }

    Component {
        id: listPageComponent
        Page {
            id: listPage
            ListView {
                anchors.fill: listPage
                width: listPage.width
                height: listPage.height

                header: PageHeader {
                    title: "ListView Demo"
                }

                model: contactModel
                delegate: Item {
                    width: listPage.width; height: 40 * Screen.pixelDensity
                    Column {
                        anchors.fill: parent
                        anchors.margins: 5 * Screen.pixelDensity
                        Text { 
                            font.pixelSize: 16 * Screen.pixelDensity
                            text: '<b>Name:</b> ' + name 
                        }
                        Text { 
                            font.pixelSize: 12 * Screen.pixelDensity
                            text: '<b>Number:</b> ' + number
                        }
                    }
                }
            }
            ListModel {
                id: contactModel
                ListElement {
                    name: "Bill Smith"
                    number: "555 3264"
                }
                ListElement {
                    name: "John Brown"
                    number: "555 8426"
                }
                ListElement {
                    name: "Sam Wise"
                    number: "555 0473"
                }
                ListElement {
                    name: "Bill Smith"
                    number: "555 3264"
                }
                ListElement {
                    name: "John Brown"
                    number: "555 8426"
                }
                ListElement {
                    name: "Sam Wise"
                    number: "555 0473"
                }
                ListElement {
                    name: "Bill Smith"
                    number: "555 3264"
                }
                ListElement {
                    name: "John Brown"
                    number: "555 8426"
                }
                ListElement {
                    name: "Sam Wise"
                    number: "555 0473"
                }
                ListElement {
                    name: "Bill Smith"
                    number: "555 3264"
                }
                ListElement {
                    name: "John Brown"
                    number: "555 8426"
                }
                ListElement {
                    name: "Sam Wise"
                    number: "555 0473"
                }
                ListElement {
                    name: "Bill Smith"
                    number: "555 3264"
                }
                ListElement {
                    name: "John Brown"
                    number: "555 8426"
                }
                ListElement {
                    name: "Sam Wise"
                    number: "555 0473"
                }
            }
        }
    }
}
