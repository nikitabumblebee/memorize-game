//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by nikita.shmelev on 04.10.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐ป", "๐", "๐ฒ", "๐ต", "๐บ", "๐ ", "๐", "โ๏ธ", "๐ธ", "๐ถ", "โต๏ธ", "๐", "๐", "๐"]
    
    private static func creatememoryGame() -> MemoryGame<String> {
            MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
                emojis[pairIndex]
            }
    }
    
    @Published private var model = creatememoryGame() // ะบะฐะถะดัะน ัะฐะท ะผะตะฝัะตััั ะผะพะดะตะปั, ะฟะพััะพะผั ะดะพะฑะฐะฒะปัะตััั ะฐััะธะฑัั @Published
    
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
