import Foundation
import UIKit

public class CardBoardView: UIView {
    
    var collectionView: UICollectionView
    var flowLayout: UICollectionViewFlowLayout
    
    public override init(frame: CGRect) {
        let background = UIImageView(image: UIImage(named: "backgroundCards.png"))
        
        flowLayout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame:frame , collectionViewLayout: flowLayout)
        collectionView.register(CardView.self, forCellWithReuseIdentifier: CardView.description())
        collectionView.backgroundColor = .clear
        
        super.init(frame: CGRect(x: 0, y: 60, width: 600, height: 994))
        self.addSubview(background)
        self.addSubview(collectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = self.frame
        flowLayout.sectionInset = UIEdgeInsets(top: 8, left: 5, bottom: 8, right: 5)
        flowLayout.itemSize = CGSize(width: 136, height: 210)
        flowLayout.scrollDirection = .vertical
    }
    
}
