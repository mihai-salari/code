import UIKit

// Current theme colors for watchOS

extension UIColor {
    // Read-only class variables
    class var wosRed: UIColor {
        return self.init(colorLiteralRed: 250.0/255.0, green: 17.0/255.0, blue: 79.0/255.0, alpha: 1.0)
    }
    
    class var wosRedBackground: UIColor {
        return self.init(colorLiteralRed: 250.0/255.0, green: 17.0/255.0, blue: 79.0/255.0, alpha: 0.17)
    }
}

let wosRed = UIColor.wosRed