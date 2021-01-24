import Foundation
import UIKit

//Criando os componetes que vai mostrar as informações da tela FinishOne
public class FinishTwoView: UIView {
    
    public let backgroundFinish2: UIImageView
    public let titleFinish2: UILabel
    public let subtitleFinish2: UILabel
    public let subtitle2Finish2: UILabel
    
    //Inicializando a classe
    public override init(frame: CGRect) {
        
        backgroundFinish2 = UIImageView(image: UIImage(named: "backgroundCards.png"))
        titleFinish2 = UILabel(frame: CGRect(x: 8, y: 178, width: 584, height: 66))
        titleFinish2.textColor = textColorFFFFFF
        titleFinish2.text = "Great! Thanks for playing!"
        
        subtitleFinish2 = UILabel(frame: CGRect(x:8, y: 333, width: 584, height: 51))
        subtitleFinish2.textColor = textColorFFFFFF
        subtitleFinish2.text = "Hope you have enjoyed 'Amazonês!"
        subtitle2Finish2 = UILabel(frame: CGRect(x:0, y: 453, width: 596, height: 198))
        subtitle2Finish2.textColor = textColorFFFFFF
        subtitle2Finish2.text = "It was pai d`égua! to share this experience about diversity with you"
        
        //Rodando o init da classe pai UIView
        super.init(frame: CGRect(x: 0, y: 0, width: 600, height: 994))
        self.addSubview(backgroundFinish2)
        self.addSubview(titleFinish2)
        self.addSubview(subtitleFinish2)
        self.addSubview(subtitle2Finish2)
        
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}





