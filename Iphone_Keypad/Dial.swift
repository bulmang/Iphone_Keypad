//
//  Dial.swift
//  Iphone_Keypad
//
//  Created by 하명관 on 2022/11/26.
//

import Foundation
import SwiftUI

struct Dial: Identifiable, Hashable {
    var id = UUID()
    var mainNumber: String
    var subAlphabet: [String]
    var buttonColor: Color? = Color("NumberColor")
    
}

var dialDummy = [[Dial(mainNumber: "1",
                       subAlphabet: ["","",""]),
                  Dial(mainNumber: "2",
                       subAlphabet: ["A","B","C"]),
                  Dial(mainNumber: "3",
                       subAlphabet: ["D","E","F"])],
                  [Dial(mainNumber: "4",
                        subAlphabet: ["G","H","I"]),
                  Dial(mainNumber: "5",
                       subAlphabet: ["J","K","L"]),
                  Dial(mainNumber: "6",
                       subAlphabet: ["M","N","O"])],
                  [Dial(mainNumber: "7",
                        subAlphabet: ["P","Q","R","S"]),
                  Dial(mainNumber: "8",
                       subAlphabet: ["T","U","V"]),
                  Dial(mainNumber: "9",
                       subAlphabet: ["W","X","Y","Z"])],
                  [Dial(mainNumber: "*",
                        subAlphabet: ["","",""]),
                  Dial(mainNumber: "0",
                       subAlphabet: ["","+",""]),
                   Dial(mainNumber: "#",
                        subAlphabet: ["","",""])],
                 [Dial(mainNumber: "", subAlphabet: ["","",""] , buttonColor: Color("VoiceColor") )],
                 [Dial(mainNumber: "delete", subAlphabet: ["","",""]  )]
                  
                 
]


