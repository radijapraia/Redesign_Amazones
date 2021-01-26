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
        
        titleStart = UILabel(frame: CGRect(x: 0, y: 90, width: 600, height: 77))
        titleStart.textColor = textColor1C6033
        titleStart.text = "Welcome to \"Amazonês\"!"
        titleStart.font = UIFont.boldSystemFont(ofSize:45)
        titleStart.textAlignment = NSTextAlignment.center
        
        subtitleStart = UILabel(frame: CGRect(x: 0, y: 172, width: 600, height: 110))
        subtitleStart.textColor = textColor385E45
        subtitleStart.text = "Enjoy the experience of knowing a\nlittle about the regional\n linguistic variations of Amazonas."
        subtitleStart.numberOfLines = 3
        subtitleStart.font = UIFont.systemFont(ofSize:28)
        subtitleStart.textAlignment = NSTextAlignment.center

        imageStart = UIImageView(frame: CGRect(x: 63, y: 298, width: 460, height: 444))
        imageStart.image = UIImage(named: "map.png")
        
        psAmazonesStart = UILabel(frame: CGRect(x: 0, y: 769, width: 600, height: 77))
        psAmazonesStart.textColor = textColor385E45
        psAmazonesStart.text = "P.S.: Amazonês is kind of a dialect of\nexpressions we use in Amazonas."
        psAmazonesStart.numberOfLines = 2
        psAmazonesStart.font = UIFont.italicSystemFont(ofSize: 23)
        psAmazonesStart.textAlignment = NSTextAlignment.center
        
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


