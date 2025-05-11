//
//  ContentView.swift
//  temp
//
//  Created by Wajan Altalhan on 5/6/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color.bg
                .ignoresSafeArea()
            Image("bgpic")
            Text("Welcome friend !")
                .font(Font.custom("IBMPlexMono-Bold", size: 34))
                .padding(.trailing,750)
                .padding(.bottom,600)
            HStack{
                VStack {
                    Button(action: {
                        
                    }) {
                        Text("Achievements")
                            .font(Font.custom("IBMPlexMono-Bold", size: 34))
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: 317, maxHeight: 276)
                            .background(Color.buttonYellow)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 15)
                                    .shadow(color: .black, radius: 0, x: 0, y: -15)
                                
                            )
                        
                    }
                    .frame(width:  317, height: 276)
                    .background(Color.black)
                    .cornerRadius(12)
                    .padding(.bottom)
                    
                    
                    
                }
                Spacer().frame(width: 65)
                VStack {
                    Button(action: {
                      

                    }) {
                        Text("Create game")
                            .font(Font.custom("IBMPlexMono-Bold", size: 34))
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: 317, maxHeight: 276)
                            .background(Color.buttonPurple)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 15)
                                    .shadow(color: .black, radius: 0, x: 0, y: -15)
                                
                            )
                        
                    }
                    .frame(width:  317, height: 276)
                    .background(Color.black)
                    .cornerRadius(12)
                    .padding(.bottom)
                    
                    
                    
                }
                Spacer().frame(width: 65)
                VStack {
                    Button(action: {
                        // Action here
                    }) {
                        Text("Join game")
                            .font(Font.custom("IBMPlexMono-Bold", size: 34))
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: 317, maxHeight: 276)
                            .background(Color.buttonBlue)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 15)
                                    .shadow(color: .black, radius: 0, x: 0, y: -15)
                                
                            )
                        
                    }
                    .frame(width:  317, height: 276)
                    .background(Color.black)
                    .cornerRadius(12)
                    .padding(.bottom)
                    
                    
                    
                }
            }
            Button(action: {
                // Action here
            }) {
                Text("Check it out first !")
                    .font(Font.custom("IBMPlexMono-SemiBold", size: 28))
                    .foregroundColor(.black)
                    .padding(.bottom)
                    .frame(maxWidth: 483, maxHeight: 96)
                    .background(Color.buttonGreen)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 15)
                            .shadow(color: .black, radius: 0, x: 0, y: -15)
                        
                    )
                
            }
            .frame(width: 483, height: 96)
            .background(Color.black)
            .cornerRadius(12)
            .padding(.top,500)
            
        }
    }
    
}

#Preview {
   Home()
}
