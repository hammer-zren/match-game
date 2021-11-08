//
//  CardCollectionViewCell.swift
//  MatchGame
//
//  Created by ZHONGTAO REN on 23/8/21.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var frontImageView: UIImageView!
    
    @IBOutlet weak var backImageView: UIImageView!
    
    func configureCell(card:Card) {
        frontImageView.image = UIImage(named: card.imageName)
    }
    
    func flip(down:Bool, speed: TimeInterval = 0.3) {
        if down {
            
            // Flip down
            UIView.transition(from: frontImageView, to: backImageView, duration: speed, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
            
        }
        else {
            
            // Flip up
            UIView.transition(from: backImageView, to: frontImageView, duration: speed, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
            
        }
    }
    
}
