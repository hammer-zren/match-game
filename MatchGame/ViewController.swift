//
//  ViewController.swift
//  MatchGame
//
//  Created by ZHONGTAO REN on 23/8/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    let model = CardModel()
    var cards = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cards = model.getCards()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }


    // MARK: - Protocol Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return cards.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//        print("cellForItemAt \(indexPath.row)")
        
        return collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        let card = cards[indexPath.row]
        let cell = collectionView.cellForItem(at: indexPath) as? CardCollectionViewCell
//        print("willDisplay forItemAt \(indexPath.row)")
        cell?.configureCell(card: card)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let card = cards[indexPath.row]
        let cell = collectionView.cellForItem(at: indexPath) as? CardCollectionViewCell
        
        cell?.flip(down:card.isFlipped)
        card.isFlipped = !card.isFlipped
        
    }
}

