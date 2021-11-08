//
//  Card.swift
//  MatchGame
//
//  Created by ZHONGTAO REN on 23/8/21.
//

import Foundation

class Card {
    
    var imageName: String
    var isMatched: Bool
    var isFlipped: Bool
    
    init(number: Int) {
        imageName = "card\(number)"
        isMatched = false
        isFlipped = false
    }
}
