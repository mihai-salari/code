//
//  EmojiData.swift
//  HelloAppleWatch
//
//  Created by Lee Choon Siong on 2017/07/02.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Foundation

extension Int {
    func random() -> Int {
        return Int(arc4random_uniform(UInt32(self)))
    }
}

struct EmojiData {
    let people = ["😀", "😆", "😅", "😂", "😇", "😘", "🤑", "😋", "😎", "😣", "😖", "🙁", "😡", "😱", "😵", "😴", "🤢", "🤐"]
    let nature = ["🌳", "🍄", "🌻", "🌏", "⭐️", "🌈", "🌧", "🦍", "🐓", "🐇", "🐟", "🐙", "🦀", "🐌", "🐥", "🐒", "🐷", "🐶", "🐛"]
    let objects = ["🖥", "💾", "📀", "☎️", "⏰", "⏳", "💣", "✂️", "💡", "💵", "📷", "📱", "🖨"]
    let places = ["🌋", "⛱", "🏠", "⛩", "🕌", "🎠", "🚌", "🚲", "🏍", "🚊"]
    let symbols = ["❤️", "🈚️", "🈲", "⛔️", "❓", "❗️", "🚻", "💬", "🆘", "♐️", "0️⃣", "1️⃣", "2️⃣", "3️⃣", "4️⃣", "5️⃣", "6️⃣", "7️⃣", "8️⃣", "9️⃣"]
}
