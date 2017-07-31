import UIKit

extension UIViewController {
    func executeAfter(seconds: Double, block: @escaping () -> Void) { // Note the use of @escaping here
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: block)
    }
}
