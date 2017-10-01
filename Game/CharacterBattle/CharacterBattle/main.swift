import Foundation

func battle(_ a: GameCharacter, vs b: GameCharacter) {
    var loser: String = ""
    var a = a, b = b
    
    while true {
        b.hitPoints -= a.attackPoints
        
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
