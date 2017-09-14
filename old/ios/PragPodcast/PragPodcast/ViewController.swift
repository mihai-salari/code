//
//  ViewController.swift
//  PragPodcast
//
//  Created by Lee Choon Siong on 2017/05/26.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    private var player: AVPlayer?
    //var player: AVPlayer? // unit test required this!
    private var radioLists: [String]?
    private var currentRadioNumber: Int = 0
    private var currentRadio: String?
    private var playerPeriodicObserver: Any?
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextRadioStationButton: UIButton!
    @IBOutlet var timeLabel: UILabel!
    
    // MARK: - deinit()
    
    deinit {
        self.player?.removeObserver(self, forKeyPath: "rate")
        
        if let oldObserver = playerPeriodicObserver {
            self.player?.removeTimeObserver(oldObserver)
        }
    }
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.radioLists = ["http://216.126.195.37:8078",
                           "http://s9.myradiostream.com:5824",
                           "http://traffic.libsyn.com/cocoaconf/CocoaConf001.m4a",
                           "http://choonsiong.com/public/mp3/Gem.mp3",
                           "http://choonsiong.com/public/mp3/Stay_With_Me.mp3"]
        
        if let radioLists = radioLists {
            self.currentRadio = radioLists[currentRadioNumber]
        }
        
        if let currentRadio = currentRadio, let url = URL(string: currentRadio) {
            self.set(url: url)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - KVO
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "rate", let player = object as? AVPlayer {
            self.playPauseButton.setTitle(player.rate == 0 ? "Play" : "Pause", for: .normal)
        }
    }
    
    // MARK: - Functions
    
    func set(url: URL) {
        self.player = AVPlayer(url: url)

        if url.lastPathComponent.isEmpty {
            self.titleLabel.text = url.absoluteString
        } else {
            self.titleLabel.text = url.lastPathComponent
        }
        
        self.player?.addObserver(self, forKeyPath: "rate", options: [], context: nil)
        
        let interval = CMTime(seconds: 0.25, preferredTimescale: 1000)
        
        self.playerPeriodicObserver = self.player?.addPeriodicTimeObserver(forInterval: interval, queue: nil) {
            [weak self] currentTime in
                print("Info: current time is \(currentTime.seconds)")
                self?.updateTimeLabel(currentTime)
        }
    }
    
    func playPause() {
        print("playPause called")
        
        if let player = player {
            print("Info: player.rate is \(player.rate)")
            if player.rate == 0 {
                player.play()
            } else {
                player.pause()
            }
        } else {
            print("Error: unable to play file")
        }
    }
    
    private func updateTimeLabel(_ currentTime: CMTime) {
        let totalSeconds = currentTime.seconds
        let minutes = Int(totalSeconds/60)
        let seconds = Int(totalSeconds.truncatingRemainder(dividingBy: 60))
        let secondsString = seconds >= 10 ? "\(seconds)" : "0\(seconds)"
        
        self.timeLabel.text = "\(minutes):\(secondsString)"
    }

    // MARK: - Actions
    
    @IBAction func handlePlayPauseTapped(_ sender: Any) {
        self.playPause()
     }
    
    @IBAction func handleNextRadioStationTapped(_ sender: Any) {
        self.timeLabel.text = "0:00"
        
        self.player?.removeObserver(self, forKeyPath: "rate")
        
        if let oldObserver = playerPeriodicObserver {
            self.player?.removeTimeObserver(oldObserver)
        }
        
        if let radioLists = self.radioLists {
            if self.currentRadioNumber < radioLists.count {
                if self.currentRadioNumber == (radioLists.count - 1) {
                    self.currentRadioNumber = 0
                } else {
                    self.currentRadioNumber += 1
                }
                
                self.currentRadio = radioLists[self.currentRadioNumber]
                
                if let currentRadio = currentRadio, let url = URL(string: currentRadio) {
                    self.set(url: url)
                    self.playPause()
                }
            } else {
                self.currentRadioNumber = 0
            }
        }
    }
}
