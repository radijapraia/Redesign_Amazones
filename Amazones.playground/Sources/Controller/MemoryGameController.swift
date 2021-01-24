import Foundation
import UIKit

//Controllador vai trabalhar com a View e o Model
public class MemoryGameController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, CardViewDelegate {
    
    var cards: [RegionalSlang]
    
    var canChoose = false
    var cardOne: CardView? = nil
    var cardTwo: CardView? = nil
    
    var firstLoad = false
    
    var count = 0

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
        if count == 8 {
            self.showFinishOne()
        }
        
        if firstLoad == true {
            return
        }
        
        let cardBoardView = self.view as! CardBoardView
        cardBoardView.flipAllCards(complete: {_ in self.canChoose = true})
        firstLoad = true
    }
    
    public func showFinishOne() {
        let finishOneController = FinishOneController()
        finishOneController.modalPresentationStyle = .fullScreen
        self.present(finishOneController, animated: true, completion: nil)
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardView.description(), for: indexPath)
        if let cardCell = cell as? CardView {
            cardCell.card = cards[indexPath.item]
            cardCell.delegate = self
        }
        
        return cell
        
    }
    
    private func showDetail(slang: RegionalSlang) {
        let detailController = DetailSlangController()
        detailController.slang = slang
        detailController.modalPresentationStyle = .fullScreen
        self.present(detailController, animated: true, completion: nil)
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
            if cardOne?.card?.card == cardTwo?.card?.card {
                cardOne = nil
                cardTwo = nil
                canChoose = true
                count = count + 1
                self.showDetail(slang: card.card!)
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
