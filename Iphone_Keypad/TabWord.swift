//
//  TabWord.swift
//  Iphone_Keypad
//
//  Created by 하명관 on 2022/11/27.
//

import SwiftUI

struct TabWord: Identifiable,Hashable {
    var id = UUID()
    var word: [String]
}

var wordDummy = [TabWord(word:["즐겨찾기","최근통화","연락처","키패드","음성사서함"]) ]
