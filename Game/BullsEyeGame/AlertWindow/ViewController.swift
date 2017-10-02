import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    var currentSliderValue: Int = 0
    var targetValue: Int = 0
    var score: Int = 0
    var round: Int = 0
    
    // MARK: - Outlets
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle slider image
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")!
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = UIImage(named: "SliderThumb-Highlighted")!
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = UIImage(named: "SliderTrackLeft")!
        let trackLeftResizable = trackLeftImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftResizable, for: .normal)
        
        let trackRightImage = UIImage(named: "SliderTrackRight")!
        let trackRightResizable = trackRightImage.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(trackRightResizable, for: .normal)
        
        self.startNewGame()
        self.updateLabels()
    }
    
    // MARK: - Functions
    
    func startNewRound() {
        self.targetValue = 1 + Int(arc4random_uniform(100))
        self.currentSliderValue = 50
        self.slider.value = Float(self.currentSliderValue)
        self.round += 1
    }
    
    func startNewGame() {
        self.score = 0
        self.round = 0
        self.startNewRound()
    }
    
    func updateLabels() {
        self.targetLabel.text = String(self.targetValue)
        self.scoreLabel.text = String(self.score)
        self.roundLabel.text = String(self.round)
    }
    
    // MARK: - Actions
    
    @IBAction func sliderDragged(_ slider: UISlider) {
        // print("The value of the slider is now: \(slider.value)")
        self.currentSliderValue = lroundf(slider.value)
    }
    
    @IBAction func startOverButtanTapped(_ sender: UIButton) {
        self.startNewGame()
        self.updateLabels()
        
        let transition = CATransition()
        transition.type = kCATransitionFade
        transition.duration = 1
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        view.layer.add(transition, forKey: nil)
    }
    
    @IBAction func hitMeButtonTapped() {
        let difference = abs(self.currentSliderValue - self.targetValue)
        var points = 100 - difference
        
        let title: String
        
        if difference == 0 {
            title = "Perfect! 😀"
            points += 100
        } else if difference < 5 {
            title = "You almost had it!"
            
            if difference == 1 {
                points += 50
            }
            
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close... 😭"
        }
        
        self.score += points
        
        //let message = "The value of the slider is: \(self.currentSliderValue)" + "\nThe target value is: \(self.targetValue)" + "\nThe difference is: \(difference)"
        
        let message = "You scored \(points) points"
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: {
                                    action in
                                    self.startNewRound()
                                    self.updateLabels()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        //self.startNewRound()
        //self.updateLabels()
    }
}
