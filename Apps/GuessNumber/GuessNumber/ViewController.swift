import UIKit

private enum Comparison {
    case smaller
    case greater
    case equal
}

private var lowerBound = 0
private var upperBound = 100
private var numberOfGuesses = 0
private var secretNumber = 0

class ViewController: UIViewController {
    
    @IBOutlet weak var rangeLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var numberOfGuessesLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberTextField.becomeFirstResponder()
        reset()
    }

    @IBAction func okButtonTapped(_ sender: UIButton) {
        numberTextField.resignFirstResponder()
        
        guard let input = numberTextField.text else { return }
        
        if let number = Int(input) {
            selectedNumber(number: number)
        } else {
            let alert = UIAlertController(title: nil, message: "Enter a number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}

private extension ViewController {
    func selectedNumber(number: Int) {
        switch compareNumber(number, to: secretNumber) {
        case .equal:
            let alert = UIAlertController(title: nil, message: "You won in \(numberOfGuesses) guesses!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {
                cmd in
                self.reset()
                self.numberTextField.text = ""
            }))
            self.present(alert, animated: true, completion: nil)
        case .smaller:
            lowerBound = max(lowerBound, number)
            messageLabel.textColor = UIColor.red
            messageLabel.text = "Your last guess was too low!"
            numberTextField.text = ""
            numberOfGuesses += 1
            renderRange()
            renderNumberOfGuesses()
        case .greater:
            upperBound = min(upperBound, number)
            messageLabel.textColor = UIColor.red
            messageLabel.text = "Your last guess was too high!"
            numberTextField.text = ""
            numberOfGuesses += 1
            renderRange()
            renderNumberOfGuesses()
        }
    }
    
    func compareNumber(_ number: Int, to otherNumber: Int) -> Comparison {
        if number < otherNumber {
            return .smaller
        } else if number > otherNumber {
            return .greater
        }
        
        return .equal
    }
}

private extension ViewController {
    func extractSecretNumber() {
        let diff = upperBound - lowerBound
        let randomNumber = Int(arc4random_uniform(UInt32(diff)))
        secretNumber = randomNumber + Int(lowerBound)
    }
    
    func renderRange() {
        rangeLabel.text = "\(lowerBound) and \(upperBound)"
    }
    
    func renderNumberOfGuesses() {
        numberOfGuessesLabel.text = "Number of Guesses: \(numberOfGuesses)"
    }
    
    func resetData() {
        lowerBound = 0
        upperBound = 100
        numberOfGuesses = 0
    }
    
    func resetMessage() {
        messageLabel.text = ""
    }
    
    func reset() {
        resetData()
        renderRange()
        renderNumberOfGuesses()
        extractSecretNumber()
        resetMessage()
    }
}
