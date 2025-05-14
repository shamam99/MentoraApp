//
//  SubscriptionPlansView.swift
//  team 19
//
//  Created by Najla adel alabdullah on 08/11/1446 AH.
//

import SwiftUI

struct SubscriptionPlansView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Image("Group 37 1")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                // Close button
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("✖️")
                            .font(Font.custom("IBMPlexMono-Bold", size: 34)) // Larger font size
                            .foregroundColor(.black) // Set text color
                            .padding()
                    }
                    Spacer()
                }
                
                // Title
                Text("Check out our plans for you!")
                    .font(Font.custom("IBMPlexMono-Bold", size: 34)) // Larger font size
                    .foregroundColor(.black) // Set text color
                    .padding(.bottom, 10)
                
                // Yellow card (Plus plan) positioned higher
                PlanCard(
                    title: "Plus",
                    description: "Level up productivity and creativity with expanded access",
                    price: "₺199 /year",
                    features: [
                        "Unlimited hearts",
                        "Unlimited adding in games",
                        "Opportunities to test new features"
                    ],
                    color: Color.yellow.opacity(0.95),
                    buttonColor: .green,
                    width: 340,
                    height: 400,
                    isCentered: true
                )
                .padding(.top, 20) // Adjust this for vertical positioning
                
                // Spacer to move the purple cards up
                Spacer(minLength: 0) // This can be adjusted
                
                // Horizontal stack for the purple cards
                HStack(spacing: 10) {
                    // Freemium Card
                    PlanCard(
                        title: "Freemium",
                        description: "Opportunity to use closed experience",
                        price: "₺19 /month",
                        features: [
                            "Unlimited to add more than 5 people for playroom",
                            "Unlimited adding in games",
                            "Opportunities to test new features"
                        ],
                        color: Color.purple.opacity(0.7),
                        buttonColor: .green,
                        width: 310,
                        height: 300 // Standard height
                    )
                    
                    Spacer()
                        .frame(width: 200) // Space for the centered card
                    
                    // Standard Card
                    PlanCard(
                        title: "Standard",
                        description: "Level up productivity and creativity with expanded access",
                        price: "₺19.99 /month",
                        features: [
                            "Unlimited hearts",
                            "Unlimited adding in games",
                            "Opportunities to test new features"
                        ],
                        color: Color.purple.opacity(0.7),
                        buttonColor: .green,
                        width: 300,
                        height: 300 // Standard height
                    )
                }
                .padding(.top, -480) // Move the purple cards up further
            }
            .padding(.top, 80)
        }
    }
}

struct PlanCard: View {
    var title: String
    var description: String
    var price: String
    var features: [String]
    var color: Color
    var buttonColor: Color
    var width: CGFloat
    var height: CGFloat
    var isCentered: Bool = false
    
    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(Font.custom("IBMPlexMono-Bold", size: 30)) // Larger font size
                .foregroundColor(.black) // Set text color
                .fontWeight(.bold)
            
            Text(description)
                .font(Font.custom("IBMPlexMono-Bold", size: 16)) // Larger font size
                .foregroundColor(.black) // Set text color
                .multilineTextAlignment(.center)
                .padding(.horizontal, 10)
            
            Text(price)
                .font(Font.custom("IBMPlexMono-Bold", size: 34)) // Larger font size
                .foregroundColor(.black) // Set text color
            
            VStack(alignment: .leading, spacing: 4) {
                ForEach(features, id: \.self) { feature in
                    Text("• \(feature)")
                        .font(Font.custom("IBMPlexMono-Bold", size: 14)) // Larger font size
                        .foregroundColor(.black) // Set text color
                        .font(.footnote)
                }
            }
            .padding(.top, 10)
            
            Button(action: {
                // Handle subscription
            }) {
                Text("Subscribe now")
                    .font(Font.custom("IBMPlexMono-Bold", size: 20)) // Larger font size
                    .foregroundColor(.black) // Set text color
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(buttonColor)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.black, lineWidth: 2)
                    )
            }
            .padding(.top, 13)
        }
        .padding()
        .background(color)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.black, lineWidth: 3)
        )
        .frame(width: width, height: height)
        .shadow(radius: isCentered ? 10 : 2)
        .zIndex(isCentered ? 1 : 0)
    }
}

// MARK: - Preview
struct SubscriptionPlansView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionPlansView()
    }
}
