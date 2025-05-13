//
//  PatternedBackground.swift.swift
//  Mentura
//
//  Created by Yara Alshammari on 10/11/1446 AH.
//

import SwiftUI

struct PatternedBackground: View {
    var body: some View {
        ZStack {
            Color(hex: "#FEFAED")
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        }
        .ignoresSafeArea()
    }
}
