//
//  CardModel.swift
//  MatchGame
//
//  Created by ZHONGTAO REN on 23/8/21.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an empty array
        var cards = [Card]()
        
        // Randomly generate 8 pairs of cards
        var cardNumbers = [Int]()
        
        while cards.count < 16 {
            
            let cardNumber = Int.random(in: 2...14)
            
            if !cardNumbers.contains(cardNumber) {
                
                cards += [Card(number: cardNumber), Card(number: cardNumber)]
                
                cardNumbers.append(cardNumber)
            }
        }
        
        // Randomize the cards within the array
        cards.shuffle()
        
        // Return the array
        return cards
    }
}
