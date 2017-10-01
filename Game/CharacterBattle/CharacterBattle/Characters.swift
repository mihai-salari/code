import Foundation

fileprivate enum GameCharacterType {
    case elf
    case giant
    case wizard
}

fileprivate protocol GameCharacter {
    var name: String { get }
    var hitPoints: Int { get }
    var attackPoints: Int { get }
}

fileprivate class Elf: GameCharacter {
    var name: String = "Elf"
    var hitPoints: Int = 3
    var attackPoints: Int = 10
}

fileprivate class Giant: GameCharacter {
    var name: String = "Giant"
    var hitPoints: Int = 10
    var attackPoints: Int = 3
}

fileprivate class Wizard: GameCharacter {
    var name: String = "Wizard"
    var hitPoints: Int = 5
    var attackPoints: Int = 5
}

