import Foundation
import UIKit

protocol CardViewDelegate: class {
    func cardClicked()
    func willFlipCard(card: CardView)
}

public class CardView: UICollectionViewCell {
    
    var cardButton: UIButton
    public var frontCard: String?
    
    var delegate: CardViewDelegate?
    
    public var flipped = false
    
    public override init(frame: CGRect) {
        
        cardButton = UIButton(frame: CGRect(x: 0, y: 0, width: 136, height: 210))
        cardButton.setBackgroundImage(UIImage(named: "backCard.png"), for: .normal)
        
        super.init(frame: frame)
        self.contentView.addSubview(cardButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        cardButton.addTarget(self, action: #selector(flipActionCard), for: .touchUpInside)
    }
    
    @objc private func flipActionCard(sender: UIButton!) {
        delegate?.willFlipCard(card: self)
    }
    
    public func flipToFront(complete: @escaping (Bool) -> Void) {
        UIView.transition(
            with: cardButton,
            duration: 0.5,
            options: .transitionFlipFromRight,
            animations: {
                self.cardButton.setBackgroundImage(UIImage(named: self.frontCard!), for: .normal)
            }, completion:complete)
    }
    
    public func flipToBack(complete: @escaping (Bool) -> Void) {
        UIView.transition(
            with: cardButton,
            duration: 0.5,
            options: .transitionFlipFromRight,
            animations: {
                self.cardButton.setBackgroundImage(UIImage(named: "backCard"), for: .normal)
            }, completion: complete)
    }
}

