//
//  ContentView.swift
//  Iphone_Keypad
//
//  Created by 하명관 on 2022/11/25.
//

import SwiftUI

struct MainView: View {

    var number: String
    
    var body: some View {
//        VStack(spacing: 15) {
//
//            HStack(spacing:25){
//
//                CustomButton(number: "1")
//
//                CustomCharButton(number: "2", char1: "A", char2: "B", char3: "C")
//
//                CustomCharButton(number: "3", char1: "D", char2: "E", char3: "F")
//
//            }
//
//            HStack(spacing:25){
//
//                CustomCharButton(number: "4", char1: "G", char2: "H", char3: "I")
//
//                CustomCharButton(number: "5", char1: "J", char2: "K", char3: "L")
//
//                CustomCharButton(number: "6", char1: "M", char2: "N", char3: "O")
//
//            }
//
//            HStack(spacing:25){
//
//                CustomCharButton2(number: "7", char1: "P", char2: "Q", char3: "R", char4: "S")
//
//                CustomCharButton(number: "8", char1: "T", char2: "U", char3: "V")
//
//                CustomCharButton2(number: "9", char1: "W", char2: "X", char3: "V", char4: "Z")
//
//            }
//
//            HStack(spacing:25){
//
//                Button {
//
//                } label: {
//                    VStack(spacing: 0){
//                        Text("*")
//                            .font(.system(size: 70))
//                            .padding(.top,30)
//                    }
//                    .foregroundColor(.white)
//                    .font(.title)
//                    .frame(width: 85,height: 85)
//                    .background(.gray)
//                    .clipShape(Circle())
//
//                }
//
//                CustomCharButton(number: "0", char1: "A", char2: "B", char3: "C")
//
//                Button {
//
//                } label: {
//                    VStack(spacing: 0){
//                        Text("#")
//                            .font(.system(size: 35))
//                            .padding(.top,0)
//                    }
//                    .foregroundColor(.white)
//                    .font(.title)
//                    .frame(width: 85,height: 85)
//                    .background(.gray)
//                    .clipShape(Circle())
//
//                }
//
//            }
//
//
//        }
//        .padding()
        VStack(spacing: 0){
            
            Text(number)
                .font(.system(size: 40))
            
            Spacer()
            
            ForEach(dialDummy, id: \.self){ items in
                HStack{
                    ForEach(items, id: \.self) { item in
                        DialButton(dialNumber: Dial(mainNumber: item.mainNumber, subAlphabet: item.subAlphabet),
                                   buttonColor: item.buttonColor)
                    }
                }
            }
            
            
        }
        .padding(.top,100)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//struct CustomButton: View {
//
//    var number: String
//
//    var body: some View {
//
//        VStack{
//            Button {
//
//            } label: {
//                VStack(spacing: -5){
//                    Text(number)
//                        .font(.system(size: 38))
//
//                    HStack{
//                        Text("!")
//                            .font(.system(size: 12))
//                    }
//                    .opacity(0)
//                    .padding(.bottom,10)
//                }
//                .foregroundColor(.white)
//                .font(.title)
//                .frame(width: 85,height: 85)
//                .background(.gray)
//                .clipShape(Circle())
//            }
//        }
//
//    }
//
//}
//
//struct CustomCharButton: View {
//
//    var number: String
//    var char1: String
//    var char2: String
//    var char3: String
//
//    var body: some View {
//
//        VStack(spacing: 0){
//            Button {
//
//            } label: {
//                VStack(spacing: -5){
//
//                    Text(number)
//                        .font(.system(size: 38))
//
//                    HStack(spacing: 1.5){
//                        Text(char1)
//                            .font(.system(size: 12))
//                            .fontWeight(.bold)
//
//                        Text(char2)
//                            .font(.system(size: 12))
//                            .fontWeight(.bold)
//
//                        Text(char3)
//                            .font(.system(size: 12))
//                            .fontWeight(.bold)
//                    }
//                    .padding(.bottom,10)
//                }
//                .foregroundColor(.white)
//                .font(.title)
//                .frame(width: 85,height: 85)
//                .background(.gray)
//                .clipShape(Circle())
//
//            }
//        }
//
//    }
//
//}
//
//struct CustomCharButton2: View {
//
//    var number: String
//    var char1: String
//    var char2: String
//    var char3: String
//    var char4: String
//
//    var body: some View {
//
//        VStack(spacing: 0){
//            Button {
//
//            } label: {
//                VStack(spacing: -5){
//
//                    Text(number)
//                        .font(.system(size: 38))
//
//                    HStack(spacing: 1.5){
//                        Text(char1)
//                            .font(.system(size: 12))
//                            .fontWeight(.bold)
//
//                        Text(char2)
//                            .font(.system(size: 12))
//                            .fontWeight(.bold)
//
//                        Text(char3)
//                            .font(.system(size: 12))
//                            .fontWeight(.bold)
//
//                        Text(char4)
//                            .font(.system(size: 12))
//                            .fontWeight(.bold)
//                    }
//                    .padding(.bottom,10)
//                }
//                .foregroundColor(.white)
//                .font(.title)
//                .frame(width: 85,height: 85)
//                .background(.gray)
//                .clipShape(Circle())
//
//            }
//        }
//
//    }
//
//}
