import Foundation

/// The original purpose is to try the access control for different modules,
/// for example, using Playground. But, since this is implemented in the same
/// module, we cannot completely hide the implementation of our GameCharacter,
/// because we won't be able to use the factory method either. Therefore,
/// to overcome that, the initializers for GameCharacters are marked as fileprivate
/// to prevent outsider from initialize the class without using the factory method.

func battle(_ a: GameCharacter, vs b: GameCharacter) {
    var loser: String = ""
    var a = a, b = b
    
    while true {
        b.hitPoints -= a.attackPoints
        
        // The hitPoints will become negative if it is already zero,
        // and still someone want to challenge it :(
        if b.hitPoints <= 0 {
            loser = b.name
            break
        }
        
        a.hitPoints -= b.attackPoints
        
        if a.hitPoints <= 0 {
            loser = a.name
            break
        }
    }
    
    print("Argh... \(loser) defeated!")
}

// We cannot instantiate like this
//let test = Elf()

// Can only use factory method to create our game characters
let elf = GameCharacterFactor.make(of: .elf)
let giant = GameCharacterFactor.make(of: .giant)
let wizard = GameCharacterFactor.make(of: .wizard)

battle(elf, vs: giant)
battle(wizard, vs: giant)
battle(wizard, vs: elf)

/*
 Argh... Giant defeated!
 Argh... Giant defeated!
 Argh... Elf defeated!
 Program ended with exit code: 0
 */
