// Copyright (c) 2019 Ultimaker B.V.
// Cura is released under the terms of the LGPLv3 or higher.

import QtQuick 2.10
import QtQuick.Controls 2.3

import UM 1.3 as UM
import Cura 1.1 as Cura


//
// This component contains the content for the page "What's new in Ultimaker Cura" of the welcome on-boarding process.
//
Item
{
    UM.I18nCatalog { id: catalog; name: "cura" }

    Label
    {
        id: titleLabel
        anchors.top: parent.top
        anchors.topMargin: 40
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        text: catalog.i18nc("@label", "Help us to improve Ultimaker Cura")
        color: UM.Theme.getColor("primary_button")
        font: UM.Theme.getFont("large_bold")
        renderType: Text.NativeRendering
    }

    Column
    {
        anchors.top: titleLabel.bottom
        anchors.topMargin: 80
        anchors.horizontalCenter: parent.horizontalCenter

        spacing: 60

        Image
        {
            id: curaImage
            anchors.horizontalCenter: parent.horizontalCenter
            source: UM.Theme.getImage("first_run_share_data")
        }

        Label
        {
            id: textLabel
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            text: catalog.i18nc("@text", "Ultimaker Cura collects anonymous data to improve print quality<br/>and user experience. <a href=\"TODO\">More information</a>")
            textFormat: Text.RichText
            font: UM.Theme.getFont("medium")
            renderType: Text.NativeRendering
        }
    }

    Cura.PrimaryButton
    {
        id: getStartedButton
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 40
        text: catalog.i18nc("@button", "Next")
        width: 140
        fixedWidthMode: true
        onClicked: base.showNextPage()
    }
}
