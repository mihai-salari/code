//
//  GeneratePassword.swift
//  BNRandomPassword
//
//  Created by Lee Choon Siong on 2017/05/08.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Foundation

private let characters = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!$@#".characters)

func generateRandomString(withLength length: Int) -> String {
    var string = ""
    
    for _ in 0..<length {
        string.append(generateRandomCharacter())
    }
    
    return string
}

func generateRandomCharacter() -> Character {
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    let character = characters[index]
    
    return character
}
