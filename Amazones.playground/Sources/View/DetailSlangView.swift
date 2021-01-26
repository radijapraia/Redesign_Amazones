import Foundation
import UIKit

//Criando os componetes que vai mostrar as informações dos detalhes
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
        titleSlang.numberOfLines = 2
        titleSlang.font = UIFont.boldSystemFont(ofSize:60)
        titleSlang.textAlignment = NSTextAlignment.center
        
        audioButton = UIButton(frame: CGRect(x: 68, y: 310, width: 43, height: 43))
        audioButton.setBackgroundImage(UIImage(named: "buttonAudioPlay.png"), for: .normal)
        
        ptBrSlang = UILabel(frame: CGRect(x:125, y: 310, width: 478, height: 43))
        ptBrSlang.textColor = textColor1C6033
        ptBrSlang.font = UIFont.systemFont(ofSize:28)
        ptBrSlang.textAlignment = NSTextAlignment.left
        
//      imageSlang = UIImageView(frame: CGRect(x: 145, y: 398, width: 283, height: 288))
        imageSlang = UIImageView(frame: CGRect(x: 0, y: 380, width: 600, height: 300))
        imageSlang.contentMode = .scaleAspectFit
        
        meaningSlang = UILabel(frame: CGRect(x: 0, y: 718, width: 600, height: 72))
        meaningSlang.textColor = textColor1C6033
        meaningSlang.numberOfLines = 2
        meaningSlang.font = UIFont.boldSystemFont(ofSize:28)
        meaningSlang.textAlignment = NSTextAlignment.center
        
        closeButton = UIButton(frame: CGRect(x: 243, y: 869, width: 114, height: 32))
        closeButton.setBackgroundImage(UIImage(named: "buttonClose.png"), for: .normal)
        
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
    
    public func setPhoto(photoName: String) {
        self.imageSlang.image = UIImage(named: photoName)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
