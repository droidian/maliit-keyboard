/*
 * Copyright 2013 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4

import MaliitKeyboard 2.0

import keys 1.0

KeyPad {
    anchors.fill: parent

    content: c1
    symbols: "languages/Keyboard_symbols.qml"

    Column {
        id: c1
        anchors.fill: parent
        spacing: 0

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "q"; shifted: "Q"; extended: ["1"]; extendedShifted: ["1"]; leftSide: true; }
            CharKey { label: "w"; shifted: "W"; extended: ["2"]; extendedShifted: ["2"] }
            CharKey { label: "e"; shifted: "E"; extended: ["3","ê","è","é","ë","€"]; extendedShifted: ["3","Ê","È","É","Ë","€"] }
            CharKey { label: "r"; shifted: "R"; extended: ["4"]; extendedShifted: ["4"] }
            CharKey { label: "t"; shifted: "T"; extended: ["5","'t","-te"]; extendedShifted: ["5","'T","-TE"] }
            CharKey { label: "y"; shifted: "Y"; extended: ["6"]; extendedShifted: ["6"] }
            CharKey { label: "u"; shifted: "U"; extended: ["7","û","ù","ú","ü"]; extendedShifted: ["7","Û","Ù","Ú","Ü"] }
            CharKey { label: "i"; shifted: "I"; extended: ["8","î","ì","í","ï"]; extendedShifted: ["8","Î","Ì","Í","Ï"] }
            CharKey { label: "o"; shifted: "O"; extended: ["9","õ","ô","ò","ó","ö","º","œ"]; extendedShifted: ["9","Õ","Ô","Ò","Ó","Ö","º","Œ"] }
            CharKey { label: "p"; shifted: "P"; extended: ["0"]; extendedShifted: ["0"]; rightSide: true; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "a"; shifted: "A"; extended: ["à","å","ã","â","á","ä","ª","æ"]; extendedShifted: ["À","Å","Ã","Â","Á","Ä","ª","Æ"]; leftSide: true; }
            CharKey { label: "s"; shifted: "S"; extended: ["'s","ß","-se","$"]; extendedShifted: ["'S","ẞ","-SE","$"] }
            CharKey { label: "d"; shifted: "D"; }
            CharKey { label: "f"; shifted: "F"; }
            CharKey { label: "g"; shifted: "G"; extended: ["-"]; extendedShifted: ["-"] }
            CharKey { label: "h"; shifted: "H"; extended: ["-hi","-ho"]; extendedShifted: ["-HI","-HO"] }
            CharKey { label: "j"; shifted: "J"; }
            CharKey { label: "k"; shifted: "K"; }
            CharKey { label: "l"; shifted: "L"; extended: ["l·l","'l","-li","-la","-lo"]; extendedShifted: ["L·L","'L","-LI","-LA","-LO"] }
            CharKey { label: "ç"; shifted: "Ç"; rightSide: true; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            ShiftKey {}
            CharKey { label: "z"; shifted: "Z"; }
            CharKey { label: "x"; shifted: "X"; }
            CharKey { label: "c"; shifted: "C"; extended: ["ç"]; extendedShifted: ["Ç"] }
            CharKey { label: "v"; shifted: "V"; }
            CharKey { label: "b"; shifted: "B"; }
            CharKey { label: "n"; shifted: "N"; extended: ["ny","'n","-ne","ñ"]; extendedShifted: ["NY","'N","-NE","Ñ"] }
            CharKey { label: "m"; shifted: "M"; extended: ["'m","-me"]; extendedShifted: ["'M","-ME"] }
            BackspaceKey {}
        }

        Item {
            anchors.left: parent.left
            anchors.right: parent.right

            height: panel.keyHeight + Device.row_margin;

            SymbolShiftKey { id: symShiftKey;                            anchors.left: parent.left; height: parent.height; }
            LanguageKey    { id: languageMenuButton;                     anchors.left: symShiftKey.right; height: parent.height; }
            CharKey        { id: commaKey;    label: ","; shifted: ","; extended: ["'","\"",";",":","@","«","»","(",")","&"]; extendedShifted: ["'","\"",";",":","@","«","»","(",")","&"]; anchors.left: languageMenuButton.right; height: parent.height; }
            SpaceKey       { id: spaceKey;                               anchors.left: commaKey.right; anchors.right: dotKey.left; noMagnifier: true; height: parent.height; }
            CharKey        { id: dotKey;      label: "."; shifted: "."; extended: ["?","%","_","+","-","!","#","/","·","¿","¡"];  extendedShifted: ["?","%","_","+","-","!","#","/","·","¿","¡"]; anchors.right: enterKey.left; height: parent.height; }
            ReturnKey      { id: enterKey;                               anchors.right: parent.right; height: parent.height; }
        }
    } // column
}
