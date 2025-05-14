//
//  QuizView.swift
//  MentoraApp
//
//  Created by shaden on 16/11/1446 AH.
//

import SwiftUI

struct QuizView: View {
    var body: some View {
        ZStack {
            // الخلفية
            Color("backgroundColor")
                .ignoresSafeArea()
            Image("backgroundImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.6)

            VStack {
                // الصف العلوي
                HStack {
                    // زر الخروج
                    Button(action: {
                        // Action here
                    }) {
                        Image(systemName: "xmark")
                            .font(.title2)
                            .foregroundColor(.black)
                            .bold()
                            .padding()
                    }

                    Spacer()

                    // رقم السؤال في المنتصف
                    Text("3 / 12")
                        .font(Font.custom("IBMPlexMono-Bold", size: 28))
                        .bold()
                        .offset(x: -520, y: 130)

                    Spacer()

                    // مجموعة الأزرار في اليمين
                    VStack(spacing: 12) {
                        Button(action: {}) {
                            Image("usersIcon")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        Image("heartIcon")
                            .resizable()
                            .frame(width: 70, height: 30)
                        Button(action: {}) {
                            Image("saveIcon")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top)

                Spacer()

                // البطاقة الزرقاء
                ZStack {
                    Image("quizcard")
                        .resizable()
                        .frame(width: 800, height: 400)
                        .border(Color.black, width: 4)
                        .cornerRadius(4)

                    Text("True or False? : IPV4 addresses are 32 bits")
                        .font(Font.custom("IBMPlexMono-Bold", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                }
                //.padding(.bottom, 30)
                 
                

                // أزرار الإجابات
                VStack(spacing: 15) {
                    HStack(spacing: 20) {
                        QuizButton(title: "Answer 1", color: Color(red: 0.05, green: 0.66, blue: 0.89))
                        QuizButton(title: "Answer 2", color: Color(red: 0.85, green: 0.28, blue: 0.13))
                    }
                    .shadow(color: .black, radius: 0, x: 0, y: 15)
                   
                    
                    HStack(spacing: 20) {
                        QuizButton(title: "Answer 3", color: Color(red: 0.05, green: 0.66, blue: 0.89))
                        QuizButton(title: "Answer 4", color: Color(red: 0.05, green: 0.66, blue: 0.89))
                    }
                    .padding(.top, 40)
                    .shadow(color: .black, radius: 0, x: 0, y: 15)
                }

                Spacer()
            }
        }
    }
}

// زر الإجابة
struct QuizButton: View {
    var title: String
    var color: Color

    var body: some View {
        Button(action: {
            print("Pressed \(title)")
        }) {
            Text(title)
            
                .foregroundColor(.black)
                .font(Font.custom("IBMPlexMono-Bold", size: 20))
                .bold()
               
                .frame(width: 360, height: 60)
                .background(
                    ZStack {
                        color
                        RoundedRectangle(cornerRadius: 9)
                            .inset(by: 1.5)
                            .stroke(Color.black, lineWidth: 3)
                    }
                )
                .cornerRadius(9)
                .shadow(color: .black, radius: 0, x: 0, y: 15)
        }
    }
}

#Preview {
    QuizView()
}
