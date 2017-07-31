import UIKit

extension UIColor {
    class func greenSea() -> UIColor {
        return UIColor.color(fromComponents: (22, 160, 133))
    }
    
    class func emerald() -> UIColor {
        return UIColor.color(fromComponents: (46, 204, 113))
    }
    
    class func sunflower() -> UIColor {
        return UIColor.color(fromComponents: (241, 196, 15))
    }
    
    class func alizarin() -> UIColor {
        return UIColor.color(fromComponents: (231, 76, 60))
    }
}

// Only visible in this file
fileprivate extension UIColor {
    static func color(fromComponents components: (CGFloat, CGFloat, CGFloat)) -> UIColor {
        return UIColor.init(red: components.0/255, green: components.1/255, blue: components.2/255, alpha: 1.0)
    }
}
