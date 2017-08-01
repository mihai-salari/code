A todo list app.

- All the UIs and autolayouts are created programatically in code without using storyboard file.
- Cartography is not working for some reason, so I use NSLayoutConstraint instead. 

- - -

### CocoaPods ###

This app use following pod:

- [Cartography](https://cocoapods.org/pods/Cartography)
- [FontAwesomeKit](https://github.com/gscalzo/FontAwesomeKit.git)
- [LatoFont](https://cocoapods.org/pods/LatoFont)
- [MGSwipeTableCell](https://cocoapods.org/pods/MGSwipeTableCell)

__Installing and Using CocoaPods__

```
$ sudo gem install cocoapods
$ cd ProjectFolder/
(close your Xcode, if it is open and running)
$ pod init
(edit Podfile)
$ pod install
(open Project.xcworkspace with Xcode)
```

To use a pod, simple add `#import _whateverpod_` and you will be able to use it in your code.
