//
//  Password.swift
//  Password
//
//  Created by Lee Choon Siong on 2017/07/02.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Foundation

struct Password {
    private let characters = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".characters)
    private let charactersWithSpecial = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%".characters)
    
    var isSpecial = true
    
    func generateRandomCharacter() -> Character {
        let index: Int
        let character: Character
        
        if isSpecial {
            index = Int(arc4random_uniform(UInt32(charactersWithSpecial.count)))
            character = charactersWithSpecial[index]
        } else {
            index = Int(arc4random_uniform(UInt32(characters.count)))
            character = characters[index]
        }
        
        return character
    }
    
    func generateRandomString(with length: Int = 8) -> String {
        var string: String = ""
        
        for _ in 0..<length {
            string.append(generateRandomCharacter())
        }
        
        return string
    }
}
