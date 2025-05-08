//
//  SorM.swift
//  temp
//
//  Created by Wajan Altalhan on 5/7/25.
//

import SwiftUI

struct SorM: View {
    var body: some View {
        ZStack{
            Color.bg
                .ignoresSafeArea()
            Image("bgpic")
            VStack{
                Text("How would you like to play today ?")
                    .font(Font.custom("IBMPlexMono-Bold", size: 34))
                    .padding(.bottom, 100)
                HStack{
                    VStack {
                        Button(action: {
                            // Action here
                        }) {
                            Text("Solo game")
                                .font(Font.custom("IBMPlexMono-Bold", size: 34))
                                .foregroundColor(.black)
                                .padding()
                                .frame(maxWidth: 256, maxHeight: 276)
                                .background(Color.buttonPurple)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.black, lineWidth: 15)
                                        .shadow(color: .black, radius: 0, x: 0, y: -15)
                                    
                                )
                            
                        }
                        .frame(width:  256, height: 276)
                        .background(Color.black)
                        .cornerRadius(12)
                        .padding(.bottom)
                        
                        
                        
                    }
                    Spacer().frame(width: 65)
                    VStack {
                        Button(action: {
                            // Action here
                        }) {
                            Text("Mulitplayer game")
                                .font(Font.custom("IBMPlexMono-Bold", size: 34))
                                .foregroundColor(.black)
                                .padding()
                                .frame(maxWidth: 399, maxHeight: 276)
                                .background(Color.buttonBlue)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.black, lineWidth: 15)
                                        .shadow(color: .black, radius: 0, x: 0, y: -15)
                                    
                                )
                            
                        }
                        .frame(width:  399, height: 276)
                        .background(Color.black)
                        .cornerRadius(12)
                        .padding(.bottom)
                        
                        
                        
                    }
                }
            }
        }
    }
}

#Preview {
    SorM()
}
