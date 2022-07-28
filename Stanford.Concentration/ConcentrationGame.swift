//
//  ConcentrationGame.swift
//  Stanford.Concentration
//
//  Created by Pavel Razumov on 28.07.2022.
//

import Foundation

class ConcentrationGame {
    
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
    }
    
}
