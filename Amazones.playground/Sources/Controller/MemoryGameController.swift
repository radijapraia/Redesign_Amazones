import Foundation
import UIKit

//Controllador vai trabalhar com a View e o Model
public class MemoryGameController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var cards: [RegionalSlang]
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
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cards.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardView.description(), for: indexPath)
        
        if let cardCell = cell as? CardView {
            cardCell.frontCard = cards[indexPath.item].card
            
        }
        
        return cell
    }
    
}
