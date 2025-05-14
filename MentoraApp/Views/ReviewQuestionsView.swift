//
//  ReviewQuestionsView.swift
//  Mentura
//
//  Created by Yara Alshammari on 08/11/1446 AH.
//

// QuestionReviewView.swift
import SwiftUI

// Custom patterned background view
//struct PatternedBackground: View {
    //var body: some View {
      //  ZStack {
        //    Color(hex: "#FEFAED")
          //  Image("background")
            //        .resizable()
              //      .scaledToFill()
                //    .edgesIgnoringSafeArea(.all)

        //}
        //.ignoresSafeArea()
   // }

struct QuestionReviewView: View {
    @ObservedObject var viewModel = QuestionReviewViewModel()
    
    var body: some View {
      
            ZStack {
                PatternedBackground()

                // Back arrow moved flush to top-left using VStack/HStack and updated paddings
                VStack {
                    HStack {
                        Button(action: {
                            // Add back navigation logic here
                        }) {
                            Image(systemName: "arrow.left")
                                .font(.system(size: 45, weight: .black))
                                .frame(width: 70, height: 86)
                                .foregroundColor(.black)
                        }
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.top, 20)
                .padding(.leading, 20)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

                VStack {
                    Text("Here is your questions do you like them ?")
                        .font(Font.custom("IBMPlexMono-Bold", size:34))                                  .foregroundColor(.black)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        .padding(.top, 4)

                    ZStack {
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color.white)
                            .frame(width: 790, height: 388)
                            .overlay(
                                RoundedRectangle(cornerRadius: 9)
                                    .stroke(Color.black, lineWidth: 6)
                            )

                        ScrollView {
                            VStack(alignment: .leading, spacing: 34) {
                                ForEach(viewModel.questions, id: \.self) { question in
                                    Text(question)
                                        .font(Font.custom("IBMPlexMono-Bold", size: 23))
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                            }
                            .padding(120)
                            .padding(.leading, -90)   // ← يحرك المحتوى شوي يسار
                            .frame(maxWidth: .infinity, alignment: .leading)                        }
                    }
                    .padding(.bottom, 40)

                    HStack(spacing: 20)  {
                        Button(action: {
                            viewModel.editQuestions()
                        }) {
                            Text("Edit them")
                                .font(Font.custom("IBMPlexMono-Bold", size:28))                                .foregroundColor(.black)
                                .frame(width: 370, height: 72) // force consistent size

                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(red: 218/255, green: 72/255, blue: 32/255)) // #DA4820
                                        .shadow(color: .black, radius: 0, x: 0, y: 15)
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.black, lineWidth: 3)
                                )
                        }


                        Button(action: {
                            viewModel.markAsPerfect()
                        }) {
                            Text("They’re perfect")
                                .font(Font.custom("IBMPlexMono-Bold", size:28))
                                .foregroundColor(.black)
                                .frame(width: 370, height: 72) // force consistent size
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(red: 5/255, green: 217/255, blue: 106/255)) // #05D96A
                                        .shadow(color: .black, radius: 0, x: 0, y: 15)
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.black, lineWidth: 3)
                                )
                        }
                    }
                }
                .frame(width: 780)
                .padding(.vertical, 90)
             //   .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
            }
            .ignoresSafeArea()
        }
    }
    
    struct QuestionReviewView_Previews: PreviewProvider {
        static var previews: some View {
            QuestionReviewView()
        }
    }
// End of QuestionReviewView

// Extension to support hex colors
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        let r = Double((rgb >> 16) & 0xFF) / 255
        let g = Double((rgb >> 8) & 0xFF) / 255
        let b = Double(rgb & 0xFF) / 255
        self.init(red: r, green: g, blue: b)
    }
}
