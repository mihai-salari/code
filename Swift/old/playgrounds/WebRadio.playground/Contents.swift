//: Playground - noun: a place where people can play

import UIKit
import AVFoundation

//let url = URL(string: "http://www.npr.org/streams/aac/live1_aac.pls")
//let url = URL(string: "http://listen.radionomy.com/-play90-sradio.m3u")
let url = URL(string: "http://216.126.195.37:8078/")

let player = AVPlayer(url: url!)
player.play()

import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
