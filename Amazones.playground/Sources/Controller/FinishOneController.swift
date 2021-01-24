import Foundation
import UIKit

public class FinishOneController: UIViewController {
    
    //Chamando a View
    public override func loadView() {
        
        super.loadView()
        self.view = FinishOneView()
    }
    
    public override func viewDidLoad() {
        
//        let finishOneView = self.view as! FinishOneView
//        finishOneView.startButton.addAction(UIAction(title: "nextButton") {(action) in self.showCardBoard()}, for: .touchUpInside)
    }
    
}
