//: Playground - noun: a place where people can play

import UIKit

let scores = [80, 65, 89]

let newScores = scores.map {
    $0 * 2
}

print(newScores)

let highScores = newScores.filter {
    $0 > 150
}

print(highScores)

let totalScores = newScores.reduce(0) {
    $0 + $1
}

print(totalScores)