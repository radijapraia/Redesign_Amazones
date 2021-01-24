import Foundation
import UIKit

//Criando os componetes que vai mostrar as informações da tela de finishOne
public class StartView: UIView {
    
    public let backgroundStart: UIImageView
    public let titleStart: UILabel
    public let subtitleStart: UILabel
    public let imageStart: UIImageView
    public let psAmazonesStart: UILabel
    public let startButton: UIButton
    
    //Inicializando a classe
    public override init(frame: CGRect) {
        
        backgroundStart = UIImageView(image: UIImage(named: "backgroundStart.png"))
        titleStart = UILabel(frame: CGRect(x: 66, y: 95, width: 468, height: 77))
        titleStart.textColor = textColor1C6033
        titleStart.text = "Welcome to 'Amazonês'!"
        subtitleStart = UILabel(frame: CGRect(x: 25, y: 156, width: 550, height: 106))
        subtitleStart.textColor = textColor385E45
        subtitleStart.text = "Enjoy the experience of knowing a little about the regional linguistic variations of Amazonas."
        imageStart = UIImageView(frame: CGRect(x: 63, y: 280, width: 456, height: 444))
        imageStart.image = UIImage(named: "map.png")
        psAmazonesStart = UILabel(frame: CGRect(x: 66, y: 761, width: 468, height: 77))
        psAmazonesStart.textColor = textColor385E45
        psAmazonesStart.text = "P.S.: Amazonês is kind of a dialect of expressions we use in Amazonas."
        startButton = UIButton(frame: CGRect(x: 273, y: 890, width: 114, height: 32))
        startButton.setBackgroundImage(UIImage(named: "buttonStart.png"), for: .normal)
        
        
        //Rodando o init da classe pai UIView
        super.init(frame: CGRect(x: 0, y: 0, width: 600, height: 994))
        self.addSubview(backgroundStart)
        self.addSubview(titleStart)
        self.addSubview(subtitleStart)
        self.addSubview(imageStart)
        self.addSubview(psAmazonesStart)
        self.addSubview(startButton)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


