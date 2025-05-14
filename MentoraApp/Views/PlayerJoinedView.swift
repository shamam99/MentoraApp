import SwiftUI

struct PlayerJoinedView: View {
    @StateObject var vm = PlayerJoinedViewModel()

    var body: some View {
        ZStack {
            PatternedBackground()
                .ignoresSafeArea()

            // سهم الرجوع في الأعلى يسار
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

            // باقي الصفحة
            VStack {
                Spacer()

                // مجموعة اللاعبين متوسطة ومتداخلة
                HStack {
                    VStack(spacing: -105) {
                        // الصف العلوي
                        HStack(spacing: -110) {
                            Image("Player1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 440, height: 400)

                            Image("Player2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 440, height: 400)
                                .offset(y: 20)
                        }

                        // الصف السفلي
                        HStack(spacing: -110) {
                            Image("Player3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 440, height: 400)
                                .offset(y: -46)// ارفع الوردي شوي

                            Image("Player4")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 440, height: 400)
                                .offset(y: -46)//ارفع الاصفر شوي
                        }
                    }
                    .padding(.vertical, -40)
                }
                .frame(maxWidth: .infinity, alignment: .center)

                Spacer()

                // الكود + الزر بجانب بعض
                HStack {
                    Text("Code: \(vm.roomCode)")
                        .font(Font.custom("IBMPlexMono-Bold", size: 20))
                        .foregroundColor(.black)

                    Spacer()

                    Button(action: {
                        print("Room created")
                    }) {
                        Text("Create Room")
                            .font(Font.custom("IBMPlexMono-Bold", size: 20))
                            .foregroundColor(.black)
                            .frame(width: 264, height: 46)
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
                .padding(.horizontal, 20)
                .padding(.bottom, 30)
            }
            .padding()
        }
    }
}

#Preview {
    PlayerJoinedView()
}
