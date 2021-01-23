import Foundation

public class RegionalSlang {
    let name: String
    let namePtBr: String
    let meaning: String
    let photo: String
    let audio: String
    let card: String
    //Contrutor da Classe RegionalSlang
    init(name: String, namePtBr: String, meaning: String, photo: String, audio: String, card: String) {
        self.name = name
        self.namePtBr = namePtBr
        self.meaning = meaning
        self.photo = photo
        self.audio = audio
        self.card = card
    }
}
