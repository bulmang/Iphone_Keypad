//
//  ContentView.swift
//  Iphone_Keypad
//
//  Created by 하명관 on 2022/11/25.
//

import SwiftUI

struct MainView: View {
    
    @Binding var childNumber: String
    
    fileprivate func keypadDialView() -> ForEach<[[Dial]], [Dial], HStack<ForEach<[Dial], Dial, DialButton>>> {
        return ForEach(dialDummy, id: \.self){ items in
            HStack{
                ForEach(items, id: \.self) { item in
                    DialButton(dialNumber: Dial(mainNumber: item.mainNumber, subAlphabet: item.subAlphabet),
                               buttonColor: item.buttonColor, childNumber: $childNumber)
                }
            }
        }
    }
    
    var body: some View {

        ZStack{
            
            
            
            VStack(spacing: 0){
                
                
                
                Text(childNumber)
                    .font(.system(size: 40))
                
                if childNumber != ""{
                    
                    Button{
                        
                    } label: {
                        Text("번호추가")
                            .foregroundColor(.blue)
                            .padding(.top,10)
                    }
                }
                
                
                Spacer()
                
                keypadDialView()
                
                
                
            }
            .padding(.top,60)
            
            

        }

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
