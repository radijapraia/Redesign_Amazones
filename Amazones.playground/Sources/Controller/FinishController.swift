import Foundation
import UIKit

public class FinishController: UIViewController {
    
    //Chamando a View
    public override func loadView() {
        
        super.loadView()
        self.view = FinishView()
    }
    
}
