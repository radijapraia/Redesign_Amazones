import Foundation
import UIKit
import AVFoundation

public class StartViewController: UIViewController {
    
    public var audioPlayerStart: AVAudioPlayer?
    
    //Chamando a View
    public override func loadView() {
        
        super.loadView()
        self.view = StartView()
    }
    
    public override func viewDidLoad() {
        
        let startView = self.view as! StartView
        self.musicPlay()
        startView.startButton.addAction(UIAction(title: "startButton") {(action) in self.showCardBoard()}, for: .touchUpInside)
    }
    
    public func showCardBoard() {
        let memoryGameController = MemoryGameController()
        memoryGameController.modalPresentationStyle = .fullScreen
        self.present(memoryGameController, animated: true, completion: nil)
//        self.audioPlayerStart?.stop()
    }
    
    public func musicPlay() {
        let musicUrl = URL(fileURLWithPath: Bundle.main.path(forResource: "Josefina.mp3", ofType: nil)!)
        
        do {
            self.audioPlayerStart = try AVAudioPlayer(contentsOf: musicUrl)
            self.audioPlayerStart?.numberOfLoops = -1
            self.audioPlayerStart?.volume = 0.1
            self.audioPlayerStart?.play()
        } catch {
            print("Error in playing music \(error.localizedDescription)")
        }
    }
}
