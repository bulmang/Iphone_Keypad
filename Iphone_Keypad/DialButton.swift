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
    
    var body: some View {
        Button{

            
        } label: {
            VStack(spacing: 0) {
                if dialNumber.mainNumber == "phone" {
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
                    if childNumber != ""{
                        Image(systemName: "delete.left.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 15)
                            .frame(width: 90,height: 90)
                            .foregroundColor(.gray)
                        
                    }

                        
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
        .simultaneousGesture(LongPressGesture().onEnded { _ in
            if dialNumber.mainNumber == "0" {
                childNumber += "+"
            }  else if dialNumber.mainNumber == "phone"{
                
            }
            else if dialNumber.mainNumber == "delete"{
                //                    if childNumber.count > 0 {
                //                        childNumber.removeLast() // 마지막이 삭제되어 반환
                //                    }
                childNumber = String(childNumber.dropLast(1)) // 적어준 숫자 만큼 배열을 지워줌.
                
            }else {
                childNumber += dialNumber.mainNumber
                    
            }
            
        })
        .simultaneousGesture(TapGesture().onEnded({ _ in
            if dialNumber.mainNumber == "phone"{
                
            }
            else if dialNumber.mainNumber == "delete"{
                //                    if childNumber.count > 0 {
                //                        childNumber.removeLast() // 마지막이 삭제되어 반환
                //                    }
                childNumber = String(childNumber.dropLast(1)) // 적어준 숫자 만큼 배열을 지워줌.
                
            }else {
                childNumber += dialNumber.mainNumber
                    
            }
        }))
        .padding(.all, 10)
        
    }
        
    
}

struct DialButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
