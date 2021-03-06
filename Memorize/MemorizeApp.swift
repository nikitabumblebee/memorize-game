//
//  MemorizeApp.swift
//  Memorize
//
//  Created by nikita.shmelev on 27.09.2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
