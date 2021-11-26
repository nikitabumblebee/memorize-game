//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by nikita.shmelev on 04.10.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚂", "🚀", "🚁", "🚜", "🚗", "🚌", "🏎", "🚓", "🚑", "🚒", "🛻", "🚚", "🚲", "🛵", "🛺", "🚠", "🚝", "✈️", "🛸", "🛶", "⛵️", "🚕", "🏍", "🚇"]
    
    private static func creatememoryGame() -> MemoryGame<String> {
            MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
                emojis[pairIndex]
            }
    }
    
    @Published private var model = creatememoryGame() // каждый раз меняется модель, поэтому добавляется атрибут @Published
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.creatememoryGame()
    }
}
