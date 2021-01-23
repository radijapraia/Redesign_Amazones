import Foundation
import UIKit


public class CardView: UICollectionViewCell {
    var cardButton: UIButton
    public var frontCard: String?
    
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
        flipToFront()
    }
    
    private func flipToFront() {
        UIView.transition(
            with: cardButton,
            duration: 0.5,
            options: .transitionFlipFromRight,
            animations: {
                self.cardButton.setBackgroundImage(UIImage(named: self.frontCard!), for: .normal)
            }, completion: {_ in print("oqwei")})
    }
}

