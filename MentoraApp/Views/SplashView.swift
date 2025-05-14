//
//  ContentView.swift
//  team 19
//
//  Created by Najla adel alabdullah on 07/11/1446 AH.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 40) { // More spacing for iPad
                Image("logo") // Image name is "logo"
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300) // Larger logo size
                
                Text("Mentura")
                    .font(Font.custom("IBMPlexMono-Bold", size: 34)) // Larger font size
                    .foregroundColor(.black) // Set text color
                
                Text("Where learning and fun meets")
                    .font(.system(size: 24)) // Slightly larger for the second line
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center) // Center alignment for the second line
            }
            .padding(.horizontal, 80) // Adequate side padding for iPad
        }
    }
}

#Preview {
    SplashView()
}
