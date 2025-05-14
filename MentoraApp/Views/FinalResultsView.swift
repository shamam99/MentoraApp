//
//  FinalResultsView.swift
//  MentoraApp
//
//  Created by shaden on 16/11/1446 AH.
//

import SwiftUI

struct Player {
    let name: String
    let imageName: String
    let score: Int
    let isWinner: Bool
}

struct FinalResultsView: View {
    let players: [Player] = [
        Player(name: "Player 2", imageName: "player2Image", score: 200, isWinner: false),
        Player(name: "Player 3", imageName: "player3Image", score: 260, isWinner: false),
        Player(name: "Winner", imageName: "winnerImage", score: 320, isWinner: true),
        Player(name: "Player 4", imageName: "player4Image", score: 180, isWinner: false)
    ]

    var body: some View {
        ZStack {
            // خلفية
            Color("backgroundColor")
                .ignoresSafeArea()
            Image("backgroundImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.6)

            VStack(spacing: 60) {
                Text("We Have A Winner !")
                    .font(.title2)
                    .font(Font.custom("IBMPlexMono-Bold", size: 40))
                    .bold()
                    .padding(.top, 32)

                if let winner = players.first(where: { $0.isWinner }) {
                    Image("starIcon")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(.bottom, -30)
                }

                HStack(alignment: .bottom, spacing: 60) {
                    ForEach(players, id: \ .name) { player in
                        BarColumn(player: player)
                    }
                }
                .padding(.bottom, 60)
            }
        }
    }
}

struct BarColumn: View {
    let player: Player

    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 16)
                    .fill(colorForPlayer(player))
                    .frame(width: 189, height: CGFloat(player.score) * 2.0)
                    .shadow(radius: 8)

                VStack(spacing: 10) {
                    Image(player.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 129, height: 200)

                    // قاعدة اللاعب
                        .frame(width: 140, height: 150)
                       
                }
            }
            Text(player.name)
                .font(.title3)
                .bold()
                .padding(.top, 10)
        }
    }

    func colorForPlayer(_ player: Player) -> Color {
        switch player.name {
        case "Player 2": return Color(red: 0.75, green: 0.62, blue: 0.87)
        case "Player 3": return Color(red: 0.98, green: 0.65, blue: 0.98)
        case "Winner": return Color(red: 0.96, green: 0.45, blue: 0.28)
        case "Player 4": return Color(red: 0.95, green: 0.8, blue: 0.01)
            

        default: return Color.gray
        }
    }

    func baseColorForPlayer(_ player: Player) -> Color {
        switch player.name {
        case "Player 2": return Color(red: 0.75, green: 0.62, blue: 0.87)
        case "Player 3": return Color(red: 0.98, green: 0.65, blue: 0.98)
        case "Winner": return Color(red: 1.0, green: 0.7, blue: 0.3)
        case "Player 4": return Color(red: 1.0, green: 0.9, blue: 0.4)
        default: return Color.gray
        }
    }
}

#Preview {
    FinalResultsView()
}
