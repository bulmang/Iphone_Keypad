//
//  DialButton.swift
//  Iphone_Keypad
//
//  Created by 하명관 on 2022/11/26.
//

import SwiftUI

struct DialButton: View {
    
    let dialNumber: Dial
    let buttonColor : Color? 
    @Binding var childNumber: String
    @GestureState var press = false
    let longGesture = TapGesture().onEnded {
        print("Gesture on VStack.")
    }
    
    var body: some View {
        Button{
            childNumber += dialNumber.mainNumber
        } label: {
            VStack(spacing: 0) {
                if dialNumber.mainNumber == "" {
                    Image(systemName:  "phone.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .background(buttonColor)
                        .padding(.top, 15)
                        .foregroundColor(.white)
                        
                }else if dialNumber.mainNumber == "*" {
                    
                    Image(systemName:  "staroflife.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .background(buttonColor)
                        .padding(.top, 15)
                    
                    
                }
                else if dialNumber.mainNumber == "#" {
                    
                    Image(systemName:  "number")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .background(buttonColor)
                        .padding(.top, 15)
                    
                    
                }else if dialNumber.mainNumber == "delete"{
                    Image(systemName: "delete.left")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding(.top, 15)
                        .frame(width: 90,height: 90)
                        .background(Color.white)
                }
                else{
                    Text(dialNumber.mainNumber)
                        .font(.system(size: 40))
                        .padding(.vertical, -5)
                        
                        
                }
                HStack(spacing:2){
                    ForEach(dialNumber.subAlphabet,id: \.self) { item in
                        Text(item)
                            .font(.system(size: 15))
                    }
                }
            }
            .foregroundColor(Color("Color"))
            .frame(width: 85,height: 85)
            .background(buttonColor)
            .clipShape(Circle())
            
        }
        .padding(.all, 10)
        
    }
        
    
}

struct DialButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
