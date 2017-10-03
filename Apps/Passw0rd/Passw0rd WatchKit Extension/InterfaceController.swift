import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var passwordButton: WKInterfaceButton!
    @IBOutlet weak var specialCharButton: WKInterfaceButton!
    
    var password = Password()
    
    lazy var specialCharacterOnFont: NSAttributedString = {
        let boldFont = UIFont.boldSystemFont(ofSize: 15.0)
        let textColor = UIColor(red: 0.01, green: 0.87, blue: 0.50, alpha: 1.0)
        let attributes = [NSAttributedStringKey.font: boldFont, NSAttributedStringKey.foregroundColor: textColor]
        let text = NSAttributedString(string: "!@#$%", attributes: attributes)
        
        return text
    }()
    
    lazy var specialCharacterOffFont: NSAttributedString = {
        let normalFont = UIFont.systemFont(ofSize: 15.0)
        let textColor = UIColor(red: 0.01, green: 0.87, blue: 0.50, alpha: 0.14)
        let attributes = [NSAttributedStringKey.font: normalFont, NSAttributedStringKey.foregroundColor: textColor]
        let text = NSAttributedString(string: "!@#$%", attributes: attributes)
        
        return text
    }()

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        self.setButtonTitle(with: password.generateRandomString())
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func generateNewPassword() -> String {
        return password.generateRandomString()
    }
    
    func setButtonTitle(with string: String) {
        self.passwordButton.setTitle(string)
    }
    
    @IBAction func newPassword() {
        let newPassword = generateNewPassword()
        self.setButtonTitle(with: newPassword)
    }
    
    @IBAction func toggleSpecialButton(_ sender: WKInterfaceButton) {
        if password.isSpecial {
            debugPrint("special characters is off")
            self.specialCharButton.setAttributedTitle(specialCharacterOffFont)
            password.isSpecial = false
        } else {
            debugPrint("special characters is on")
            self.specialCharButton.setAttributedTitle(specialCharacterOnFont)
            password.isSpecial = true
        }
    }
}
