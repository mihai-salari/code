import Cocoa

// Storyboard is the default setting now...

class ViewController: NSViewController {
    
    var passwordLength: Int32 = 0
    
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var passwordLengthLabel: NSTextField!
    @IBOutlet weak var passwordLengthSlider: NSSlider!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        passwordLength = self.passwordLengthSlider.intValue
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func generatePassword(_ sender: NSButton) {
        let length = 8
        let password = generateRandomStringWithLength(length);
        self.textField.stringValue = password
    }
    
    @IBAction func passwordLengthSliderChangeValue(_ sender: NSSlider) {
        passwordLength = sender.intValue
        print("DEBUG: password length = \(passwordLength)")
        self.passwordLengthLabel.stringValue = "\(passwordLength)"
    }

}
