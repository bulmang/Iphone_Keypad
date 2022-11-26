//
//  MainView.swift
//  Iphone_Keypad
//
//  Created by 하명관 on 2022/11/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentTab: Tab = .keypad
    
    var wordDummy: [String] = ["즐겨찾기","최근통화","연락처","키패드","음성사서함"]
    
    var body: some View {
        VStack{
            TabView(selection: $currentTab) {
                
                Text("Star")
                    .tag(Tab.star)
                    
                
                Text("recent")
                    .tag(Tab.recent)
                
                Text("phonenubmer")
                    .tag(Tab.phonenumber)
                
                MainView(number: "1")
                    .tag(Tab.keypad)
                
                Text("voicerecord")
                    .tag(Tab.voicerecord)
            }
            
            HStack(spacing:40){
                ForEach(Tab.allCases, id:\.self) { tab in
                    Button{
                        currentTab = tab
                    } label: {
                        VStack{
                            Image(tab.rawValue)
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .foregroundColor(currentTab == tab ? Color("ButtonColor") : Color.gray)
                            
                            Text(tab.rawValue)
                                .font(.system(size: 12))
                                .foregroundColor(currentTab == tab ? Color("ButtonColor") : Color.gray)
                        }
                        
                    }
                }
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
enum Tab: String,CaseIterable{
    
    case star = "즐겨찾기"
    case recent = "최근 통화"
    case phonenumber = "연락처"
    case keypad = "키패드"
    case voicerecord = "음성 사서함"
}





