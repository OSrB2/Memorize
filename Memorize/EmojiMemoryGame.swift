//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Pedro Oliveira on 16/05/25.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
	@Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemomoryGame()
	
	static func createMemomoryGame() -> MemoryGame<String> {
		let emojis = ["👻", "🎃", "🕷️"]
		return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { parIndex in
			return emojis[parIndex]
		}
	}
	
	
	// MARK: - Access to the model
	
	var cards: Array<MemoryGame<String>.Card> {
		model.cards
	}
	
	// MARK: - Intent(s)
	
	func choose(card: MemoryGame<String>.Card) {
		model.choose(card: card)
	}
}
