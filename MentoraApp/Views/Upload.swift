//
//  Upload.swift
//  temp
//
//  Created by Wajan Altalhan on 5/8/25.
//

import SwiftUI

struct Upload: View {
    var body: some View {
        ZStack{
            Color.bg
                .ignoresSafeArea()
            Image("bgpic")
            Image("wink")
                .resizable()
                .frame(width: 250, height: 250)
                .padding(.trailing, 800)
                .padding(.top, 500)
            HStack{
                VStack{
                    Image("star")
                        .padding(.trailing, 450)
                    Text("Upload Your file here \nto get your generated questions ")
                        .font(.custom("IBMPlexMono-Bold", size: 34))
                }
                Spacer().frame(width: 100)
                ZStack{
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 9)
                            .stroke(Color.black, lineWidth: 9)
                    )
                    .frame(width: 500, height: 400)
                    Button(action: {
                        // Action here
                    }) {
                        Text("Upload File")
                            .font(Font.custom("IBMPlexMono-Bold", size: 34))
                            .foregroundColor(.black)
                            .padding(.bottom)
                            .frame(maxWidth: 365, maxHeight: 114)
                            .background(Color.buttonGreen)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 15)
                                    .shadow(color: .black, radius: 0, x: 0, y: -15)
                                
                            )
                        
                    }
                    .frame(width: 365, height: 114)
                    .background(Color.black)
                    .cornerRadius(12)
            }
            }
            HStack{
                RoundedRectangle(cornerRadius: 9)
                    .fill(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 9)
                            .stroke(Color.black, lineWidth: 5)
                        )
                    .frame(width:40, height: 40)
                Text(" Terms & Conditions")
                    .font(Font.custom("IBMPlexMono-Medium", size: 28))
            }
            .padding(.leading, 600)
            .padding(.top, 500)
        }
    }
}

#Preview {
    Upload()
}

