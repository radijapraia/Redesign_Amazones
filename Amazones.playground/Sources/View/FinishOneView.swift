import Foundation
import UIKit

//Criando os componetes que vai mostrar as informações da tela FinishOne
public class FinishOneView: UIView {
    
    public let backgroundFinish1: UIImageView
    public let titleFinish1: UILabel
    public let subtitleFinish1: UILabel
    public let nextButton: UIButton
    
    //Inicializando a classe
    public override init(frame: CGRect) {
        
        backgroundFinish1 = UIImageView(image: UIImage(named: "backgroundCards.png"))
        titleFinish1 = UILabel(frame: CGRect(x: 61, y: 282, width: 479, height: 72))
        titleFinish1.textColor = textColorFFFFFF
        titleFinish1.text = "Whip on the bucket!"
        subtitleFinish1 = UILabel(frame: CGRect(x:92, y: 407, width: 414, height: 108))
        subtitleFinish1.textColor = textColorFFFFFF
        subtitleFinish1.text = "You learned some of ours linguist variations."
        nextButton = UIButton(frame: CGRect(x: 256, y: 588, width: 114, height: 32))
        nextButton.setBackgroundImage(UIImage(named: "buttonNext.png"), for: .normal)
        
        //Rodando o init da classe pai UIView
        super.init(frame: CGRect(x: 0, y: 0, width: 600, height: 994))
        self.addSubview(backgroundFinish1)
        self.addSubview(titleFinish1)
        self.addSubview(subtitleFinish1)
        self.addSubview(nextButton)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



