//
//  PlayerJoinedViewModel.swift
//  Mentura
//
//  Created by Yara Alshammari on 08/11/1446 AH.
//

import SwiftUI

class PlayerJoinedViewModel: ObservableObject {
    @Published var players: [Player] = [
        Player(name: "Player 1", imageName: "player1"),
        Player(name: "Player 2", imageName: "player2"),
        Player(name: "Player 3", imageName: "player3"),
        Player(name: "Player 4", imageName: "player4")
    ]
    
    @Published var roomCode: String = "KFJEKJVNKEKFS"
}
