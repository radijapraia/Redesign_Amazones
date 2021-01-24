import Foundation
import UIKit

//Criando os componetes que vai mostrar as informações
public class DetailSlangView: UIView {
    
    public let background: UIImageView
    public let titleSlang: UILabel
    public let ptBrSlang: UILabel
    public let meaningSlang: UILabel
    public let audioButton: UIButton
    public let closeButton: UIButton
    public let imageSlang: UIImageView
    
    //Inicializando a classe
    public override init(frame: CGRect) {
        
        background = UIImageView(image: UIImage(named: "backgroundDetailsMatch.png"))
        titleSlang = UILabel(frame: CGRect(x: 0, y: 106, width: 600, height: 144))
        titleSlang.textColor = textColor385E45
        ptBrSlang = UILabel(frame: CGRect(x: 131, y: 310, width: 469, height: 36))
        ptBrSlang.textColor = textColor1C6033
        meaningSlang = UILabel(frame: CGRect(x: 69, y: 718, width: 531, height: 72))
        meaningSlang.textColor = textColor1C6033
        audioButton = UIButton(frame: CGRect(x: 69, y: 310, width: 43, height: 43))
        audioButton.setBackgroundImage(UIImage(named: "buttonAudioPlay.png"), for: .normal)
        closeButton = UIButton(frame: CGRect(x: 265, y: 869, width: 114, height: 32))
        closeButton.setBackgroundImage(UIImage(named: "buttonClose.png"), for: .normal)
        imageSlang = UIImageView(frame: CGRect(x: 145, y: 398, width: 283, height: 288))
        
        
        //Rodando o init da classe pai UIView
        super.init(frame: CGRect(x: 0, y: 0, width: 600, height: 994))
        self.addSubview(background)
        self.addSubview(titleSlang)
        self.addSubview(ptBrSlang)
        self.addSubview(meaningSlang)
        self.addSubview(audioButton)
        self.addSubview(closeButton)
        self.addSubview(imageSlang)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
