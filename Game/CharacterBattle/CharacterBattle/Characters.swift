import Foundation

fileprivate enum GameCharacterType {
    case elf
    case giant
    case wizard
}

fileprivate protocol GameCharacter {
    var name: String { get set }
    var hitPoints: Int { get set }
    var attackPoints: Int { get set }
}
