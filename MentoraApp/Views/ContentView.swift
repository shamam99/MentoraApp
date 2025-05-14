//
//  ContentView.swift
//  MentoraApp
//
//  Created by shaden on 16/11/1446 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var offset: CGSize = .zero
    @State private var currentCard: String = "pinkCard"
    @State private var correctAnswers = 10
    @State private var hearts = 3
    @State private var showGreen = false
    @State private var showRed = false
    @State private var currentImageName: String = ""
    

    let questionText = "Is Cairo the capital of Egypt?"
    
    
    // MARK: -
    var body: some View {

 ZStack {
            Color("backgroundColor")
                .ignoresSafeArea()
            Image("backgroundImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.6)
     
     // MARK: - here the start of this
        VStack {
            // الصف العلوي
            HStack {
                Image("exitIcon")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding()
                Spacer()
            }
            // MARK: -
            // الصف الثاني
            HStack {
                HStack(spacing: 4) {
                    ForEach(0..<hearts, id: \.self) { _ in
                        Image("heartIcon")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
                Spacer()
                Image("saveIcon")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            .padding(.horizontal)

            Spacer()
            // MARK: -
            // البطاقات
            ZStack {
                if currentCard == "pinkCard" {
                    Image("pinkCard")
                        .resizable()
                        .frame(width: 250, height: 350)
                        .overlay(
                            Text(questionText)
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding()
                        )
                        .offset(offset)
                        .rotationEffect(.degrees(Double(offset.width / 20)))
                        .gesture(
                            DragGesture()
                                .onChanged { gesture in
                                    self.offset = gesture.translation
                                }
                                .onEnded { _ in
                                    withAnimation {
                                        if offset.width > 100 {
                                            // سحب لليمين (إجابة صحيحة)
                                            currentCard = "greenCard"
                                            correctAnswers += 1
                                        } else if offset.width < -100 {
                                            // سحب لليسار (إجابة خاطئة)
                                            currentCard = "redCard"
                                            hearts = max(0, hearts - 1)
                                        }
                                        offset = .zero
                                    }
                                }
                        )
                } else if currentCard == "greenCard" {
                    Image("greenCard")
                        .resizable()
                        .frame(width: 250, height: 350)
                } else if currentCard == "redCard" {
                    Image("redCard")
                        .resizable()
                        .frame(width: 250, height: 350)
                }
            }

            Spacer()
            // MARK: -
            // الصف السفلي
            HStack {
                Image("wrong_answer")
                    .resizable()
                    .frame(width: 24, height: 24)

                Spacer()

                HStack(spacing: 4) {
                    Image("correctIcon")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Text("\(correctAnswers)")
                        .font(.headline)
                        .foregroundColor(.green)
                }

                Spacer()

                Image("right_answer")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            .padding(.horizontal)
            .padding(.bottom, 20)
        }
    }
}
}

#Preview {
    ContentView()
}
