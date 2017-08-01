import UIKit

// identity operator === or !==
// defined for operands whose type is AnyObject?

// Typical use case is that a class instance arrives from Cocoa, and you need to know
// whether it is in fact a particular object to which you already have a reference.

// For example, a Notification object has an object property that helps identity the notification (usually, it is the
// original sender of the notification). We can use === to test whether this object is the same as some object to which we
// already have a reference. However, object is typed as Any in Swift 3 (actually, as an Optional wrapping Any), so we
// must cast to AnyObject? in order to take advantage of the identity inspector.

// Following code is just example, won't work if you know why
func changed(_ n: Notification) {
    let player = MyMusicPlayerController.applicationMusicPlayer()
    
    if n.object as AnyObject? === player {
        //  ...
    }
}