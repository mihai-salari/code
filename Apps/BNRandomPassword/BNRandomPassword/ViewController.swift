import Cocoa

// Storyboard is the default setting now...

class ViewController: NSViewController {
    
    var passwordLength: Int32 = 8
    var isSpecialCharacter: Bool = true
    
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var passwordLengthLabel: NSTextField!
    @IBOutlet weak var passwordLengthSlider: NSSlider!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.passwordLengthSlider.intValue = passwordLength
        self.passwordLengthLabel.stringValue = "\(passwordLength)"
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func generatePassword(_ sender: NSButton) {
        let length = passwordLength
        //let password = generateRandomStringWithLength(length);
        let password = generatePasswordWithLength(length, isSpecial: isSpecialCharacter)
        self.textField.stringValue = password
    }
    
    @IBAction func passwordLengthSliderChangeValue(_ sender: NSSlider) {
        passwordLength = sender.intValue
        print("DEBUG: password length = \(passwordLength)")
        self.passwordLengthLabel.stringValue = "\(passwordLength)"
    }
    
    @IBAction func specialCharacterToggle(_ sender: NSButton) {
        print("DEBUG: special character = \(sender.state)")
        
        switch sender.state {
        case 0:
            isSpecialCharacter = false
        case 1:
            isSpecialCharacter = true
        default:
            fatalError("ERROR: invalid special character's state")
        }
    }

}
