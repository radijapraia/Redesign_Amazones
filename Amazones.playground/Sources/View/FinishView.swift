import Foundation
import UIKit

//Criando os componetes que vai mostrar as informações da tela FinishOne
public class FinishView: UIView {
    
    public let backgroundFinish2: UIImageView
    public let subtitleFinish1: UILabel
    public let titleFinish2: UILabel
    public let subtitleFinish2: UILabel
    public let subtitle2Finish2: UILabel
    
    //Inicializando a classe
    public override init(frame: CGRect) {
        
        backgroundFinish2 = UIImageView(image: UIImage(named: "backgroundCards.png"))
        
        subtitleFinish1 = UILabel(frame: CGRect(x:0, y: 218, width: 600, height: 86))
        subtitleFinish1.textColor = textColorFFFFFF
        subtitleFinish1.text = "You learned some of ours\n linguist variations."
        subtitleFinish1.numberOfLines = 2
        subtitleFinish1.font = UIFont.boldSystemFont(ofSize:36)
        subtitleFinish1.textAlignment = NSTextAlignment.center
        
        titleFinish2 = UILabel(frame: CGRect(x: 0, y: 383, width: 600, height: 66))
        titleFinish2.textColor = textColorFFFFFF
        titleFinish2.text = "Great! Thanks for playing!"
        titleFinish2.font = UIFont.boldSystemFont(ofSize:36)
        titleFinish2.textAlignment = NSTextAlignment.center
        
        subtitleFinish2 = UILabel(frame: CGRect(x:8, y: 529, width: 600, height: 51))
        subtitleFinish2.textColor = textColorFFFFFF
        subtitleFinish2.text = "Hope you have enjoyed \"Amazonês\"!"
        subtitleFinish2.font = UIFont.boldSystemFont(ofSize:33)
        subtitleFinish2.textAlignment = NSTextAlignment.center
        
        
        subtitle2Finish2 = UILabel(frame: CGRect(x:0, y: 649, width: 600, height: 198))
        subtitle2Finish2.textColor = textColorFFFFFF
        subtitle2Finish2.text = "It was pai d`égua!\n to share this experience about\n diversity with you"
        subtitle2Finish2.numberOfLines = 3
        subtitle2Finish2.font = UIFont.boldSystemFont(ofSize:36)
        subtitle2Finish2.textAlignment = NSTextAlignment.center
        
        
        //Rodando o init da classe pai UIView
        super.init(frame: CGRect(x: 0, y: 0, width: 600, height: 994))
        self.addSubview(backgroundFinish2)
        self.addSubview(subtitleFinish1)
        self.addSubview(titleFinish2)
        self.addSubview(subtitleFinish2)
        self.addSubview(subtitle2Finish2)
        
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}





