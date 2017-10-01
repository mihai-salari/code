import Foundation

enum GameCharacterType {
    case elf
    case giant
    case wizard
}

protocol GameCharacter {
    var name: String { get }
    var hitPoints: Int { get set }
    var attackPoints: Int { get set }
}

class Elf: GameCharacter {
    var name: String = "Elf"
    var hitPoints: Int = 3
    var attackPoints: Int = 10
    
    fileprivate init() { }
}

class Giant: GameCharacter {
    var name: String = "Giant"
    var hitPoints: Int = 10
    var attackPoints: Int = 3
    
    fileprivate init() { }
}

class Wizard: GameCharacter {
    var name: String = "Wizard"
    var hitPoints: Int = 5
    var attackPoints: Int = 5
    
    fileprivate init() { }
}

struct GameCharacterFactor {
    static func make(of type: GameCharacterType) -> GameCharacter {
        switch type {
        case .elf:
            return Elf()
        case .giant:
            return Giant()
        case .wizard:
            return Wizard()
        }
    }
}
