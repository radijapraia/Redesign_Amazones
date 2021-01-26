import Foundation
import UIKit
import AVFoundation

public class DetailSlangController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?
    
    public var slang:RegionalSlang?
    
    //Chamando a View
    public override func loadView() {
        
        super .loadView()
        self.view = DetailSlangView()
    }
    
    public override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let detailView = self.view as! DetailSlangView
        
        detailView.titleSlang.text = slang?.name
        detailView.ptBrSlang.text = slang?.namePtBr
        detailView.meaningSlang.text = slang?.meaning
        detailView.setPhoto(photoName: slang!.photo)

        detailView.closeButton.addAction(UIAction(title: "closeButton") {(action) in self.dismiss(animated: true, completion: nil)
        }, for: .touchUpInside)
        
        detailView.audioButton.addAction(UIAction(title: "buttonAudioPlay") {(action) in self.slangPlay()}, for: .touchUpInside)
    }
    
    private func slangPlay() {
        let musicUrl = URL(fileURLWithPath: Bundle.main.path(forResource: slang?.audio, ofType: nil)!)
        
        do {
            self.audioPlayer = try AVAudioPlayer(contentsOf: musicUrl)
            self.audioPlayer?.play()
        } catch {
            print("Error in playing music \(error.localizedDescription)")
        }
    }
}
