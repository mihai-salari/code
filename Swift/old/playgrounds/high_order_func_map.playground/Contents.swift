//: Playground - noun: a place where people can play

import UIKit

let scores = [80, 65, 89]

let newScores = scores.map {
    $0 * 2
}

print(newScores)