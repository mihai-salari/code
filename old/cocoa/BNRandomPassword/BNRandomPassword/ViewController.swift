import Cocoa

// Storyboard is the default setting now...

class ViewController: NSViewController {
    
    @IBOutlet weak var textField: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func generatePassword(_ sender: AnyObject) {
        let length = 8
        let password = generateRandomString(withLength: length)        
        self.textField.stringValue = password
    }

}
