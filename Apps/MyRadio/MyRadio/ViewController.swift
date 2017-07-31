//
//  ViewController.swift
//  MyRadio
//
//  Created by Lee Choon Siong on 2017/05/27.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit
import AVFoundation

enum Direction: Int {
    case previous
    case next
    case unknown
}

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var lengthLabel: UILabel!
    //@IBOutlet var playPauseButton: UIButton!
    @IBOutlet var backgroundImageView: UIImageView!
    
    // MARK: - Properties
    
    private var playerPeriodicObserver: Any?
    
    var player: AVPlayer?
    var selectedMedia: Int = 0
    var selectedDirection: Direction?
    
    lazy var mediaLists: [Media] = {
        var mediaLists = [Media]()
        
        let media1 = Media(mediaName: "J-Jams Radio", mediaType: Media.MediaType.radio, mediaURL: "http://216.126.195.37:8078")
        let media2 = Media(mediaName: "Kpopway", mediaType: Media.MediaType.radio, mediaURL: "http://smoke.wavestreamer.com:2684/listen.pls?sid=1")
        let media3 = Media(mediaName: "G.E.M 🎵 後會無期", mediaType: Media.MediaType.mp3, mediaURL: "http://choonsiong.com/public/mp3/Gem.mp3")
        let media4 = Media(mediaName: "Stay with Me, Chanyeol & Punch", mediaType: Media.MediaType.mp3, mediaURL: "http://choonsiong.com/public/mp3/Stay_With_Me.mp3")
        let media5 = Media(mediaName: "Cocoa Conference #1", mediaType: Media.MediaType.podcast, mediaURL: "http://traffic.libsyn.com/cocoaconf/CocoaConf001.m4a")
        let media6 = Media(mediaName: "J-Club Power", mediaType: Media.MediaType.radio, mediaURL: "http://cabhs37.sonixcast.com:20216")
        let media7 = Media(mediaName: "觸及不到你的溫柔，換來的卻是你痛心的眼眸", mediaType: Media.MediaType.mp3, mediaURL: "http://choonsiong.com/public/mp3/Touch.mp3")
        let media8 = Media(mediaName: "Dreams Station", mediaType: Media.MediaType.radio, mediaURL: "http://s9.myradiostream.com:5824")
        //let media7 = Media(mediaName: "J-Idols Project", mediaType: Media.MediaType.radio, mediaURL: "http://listen.radionomy.com/j-idolsprojectradio-alljapaneseidols.m3u")
        
        mediaLists.append(media1)
        mediaLists.append(media2)
        mediaLists.append(media3)
        mediaLists.append(media4)
        mediaLists.append(media5)
        mediaLists.append(media6)
        mediaLists.append(media7)
        mediaLists.append(media8)
        
        return mediaLists
    }()
    
    lazy var totalMedia: Int = {
        return self.mediaLists.count
    }()
    
    // MARK: - deinit
    
    deinit {
        // self.player?.removeObserver(self, forKeyPath: "rate")
        
        if let oldObserver = playerPeriodicObserver {
            self.player?.removeTimeObserver(oldObserver)
        }
    }
    
    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playMedia(for: self.mediaLists[selectedMedia])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        self.playPause()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - KVO
    
    // 2016-05-28: Removed after I have added tap gesture detection
    
    /*override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "rate", let player = object as? AVPlayer {
            self.playPauseButton.setTitle(player.rate == 0 ? "Play" : "Pause", for: .normal)
        }
    }*/
    
    // MARK: - Functions
    
    private func updateTimeLabel(_ currentTime: CMTime) {
        let totalSeconds = currentTime.seconds
        let minutes = Int(totalSeconds/60)
        let seconds = Int(totalSeconds.truncatingRemainder(dividingBy: 60))
        let secondsString = seconds >= 10 ? "\(seconds)" : "0\(seconds)"
        
        self.lengthLabel.text = "\(minutes):\(secondsString)"
    }
    
    func playMedia(for media: Media) {
        if let url = URL(string: media.mediaURL) {
            self.player = AVPlayer(url: url)
            // self.player?.addObserver(self, forKeyPath: "rate", options: [], context: nil)
            
            self.titleLabel.text = media.mediaName
            
            let interval = CMTime(seconds: 0.25, preferredTimescale: 1000)
            
            self.playerPeriodicObserver = self.player?.addPeriodicTimeObserver(forInterval: interval, queue: nil)
            {
                [weak self] currentTime in
                
                //print("Info: current time is \(currentTime.seconds)")
                
                self?.updateTimeLabel(currentTime)
            }
            
            switch media.mediaType {
            case .mp3:
                //print("playing mp3 song")
                //self.lengthLabel.text = "0:00"
                self.backgroundImageView.image = UIImage(named: "MainViewBG1", in: nil, compatibleWith: nil)
            case .podcast:
                //print("playing podcast")
                //self.lengthLabel.text = "0:00"
                self.backgroundImageView.image = UIImage(named: "MainViewBG2", in: nil, compatibleWith: nil)
            case .radio:
                //print("playing music from radio station")
                //self.lengthLabel.text = "-:--"
                self.backgroundImageView.image = UIImage(named: "MainViewBG3", in: nil, compatibleWith: nil)
            case .unknown:
                print("unknown media type")
                //self.lengthLabel.text = "-:--"
            }
            
            self.playPause()
        }
    }
    
    func playDirection(_ direction: Direction) {
        self.lengthLabel.text = "0:00"
        // self.player?.removeObserver(self, forKeyPath: "rate")
        
        if let oldObserver = playerPeriodicObserver {
            self.player?.removeTimeObserver(oldObserver)
        }
        
        switch direction {
        case .next:
            if self.selectedMedia < self.totalMedia {
                
                if self.selectedMedia == (self.totalMedia - 1) { // this is the last element in the list
                    self.selectedMedia = 0
                } else {
                    self.selectedMedia += 1
                }
                
                self.playMedia(for: mediaLists[self.selectedMedia])
            }
        case .previous:
            if self.selectedMedia < self.totalMedia {
                
                if self.selectedMedia == 0 { // this is the first element in the list
                    self.selectedMedia = self.totalMedia - 1
                } else {
                    self.selectedMedia -= 1
                }
                
                self.playMedia(for: mediaLists[self.selectedMedia])
            }
        case .unknown:
            print("unknown direction")
        }
    }
    
    func playPause() {
        if let player = self.player {
            if player.rate == 0 {
                player.play()
                print("player play")
            } else {
                player.pause()
                print("player pause")
            }
        }
    }
    
    // MARK: - Actions
    
    // 2016-05-28: Removed after I have added tap gesture detection
    
    /*@IBAction func handlePlayPauseButton(_ sender: Any) {
        //print("handlePlayPauseButton tapped")
        
        self.playPause()
    }*/
    
    // 2016-05-28: Removed after I have added swipes gesture detection
    
    /*@IBAction func handleNextButton(_ sender: Any) {
        //print("handleNextButton tapped")
        
        self.lengthLabel.text = "0:00" // reset time to 0:00
        
        self.player?.removeObserver(self, forKeyPath: "rate") // we remove self from observing "rate" before create a new player
        
        if let oldObserver = playerPeriodicObserver {
            self.player?.removeTimeObserver(oldObserver)
        }
        
        if self.selectedMedia < self.totalMedia {
            
            if self.selectedMedia == (self.totalMedia - 1) { // this is the last element in the lists, becareful!
                self.selectedMedia = 0
            } else {
                self.selectedMedia += 1
            }
            
            self.playMedia(for: mediaLists[self.selectedMedia])
        }
    }*/
    
    @IBAction func handleSwipeLeftRight(_ sender: UISwipeGestureRecognizer) {
        print("handleSwipeLeftRight called")
        
        switch sender.direction {
        case UISwipeGestureRecognizerDirection.left:
            print("play next")
            self.selectedDirection = .next
        case UISwipeGestureRecognizerDirection.right:
            print("play previous")
            self.selectedDirection = .previous
        default:
            //print("not supported")
            self.selectedDirection = .unknown
        }
        
        if let direction = self.selectedDirection {
            self.playDirection(direction)
        }
    }
    
    @IBAction func handlePlayPauseTapped(_ sender: UITapGestureRecognizer) {
        print("handlePlayPauseTapped called")
        self.playPause()
    }
}
