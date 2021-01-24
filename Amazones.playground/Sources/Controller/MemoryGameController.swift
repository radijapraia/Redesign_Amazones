import Foundation
import UIKit

//Controllador vai trabalhar com a View e o Model
public class MemoryGameController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, CardViewDelegate {
    
    var cards: [RegionalSlang]
    
    var canChoose = false
    var cardOne: CardView? = nil
    var cardTwo: CardView? = nil
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        cards = regionalSlangList + regionalSlangList
        cards = cards.shuffled()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Carregando a View
    public override func loadView() {
        super.loadView()
        
        self.view = CardBoardView()
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        let cardBoardView = self.view as! CardBoardView
        cardBoardView.collectionView.delegate = self
        cardBoardView.collectionView.dataSource = self
        
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let cardBoardView = self.view as! CardBoardView
        cardBoardView.flipAllCards(complete: {_ in self.canChoose = true})
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardView.description(), for: indexPath)
        if let cardCell = cell as? CardView {
            cardCell.frontCard = cards[indexPath.item].card
            cardCell.delegate = self
        }
        
        return cell
    }
    
}

extension MemoryGameController {
    
    public func cardClicked(){
        print("cardClick")
    }
    
    public func willFlipCard(card: CardView) {
        
        if card.flipped {
            return
        }
        
        if canChoose == false {
            return
        }
        
        canChoose = false
        
        card.flipped = true
        
        if cardOne == nil {
            cardOne = card
            card.flipToFront(complete: {_ in self.canChoose = true})
        } else {
            cardTwo = card
            card.flipToFront(complete: {_ in})
            if cardOne?.frontCard == cardTwo?.frontCard {
                cardOne = nil
                cardTwo = nil
                canChoose = true
            } else {
                //pra quando não der match
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.cardOne?.flipToBack(complete: {_ in})
                    self.cardOne?.flipped = false
                    self.cardOne = nil
                    self.cardTwo?.flipToBack(complete: {_ in})
                    self.cardTwo?.flipped = false
                    self.cardTwo = nil
                    self.canChoose = true
                }
                
            }
        }
    }
}
