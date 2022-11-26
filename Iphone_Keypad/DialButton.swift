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
    
    var body: some View {
        Button{
            
        } label: {
            VStack(spacing: 0) {
                if dialNumber.mainNumber == "Phone" {
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
        .padding(.all, 6)
        
    }
    
}

struct DialButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
