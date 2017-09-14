
> All the example projects in this repository do not contain all the required resources (UI files, media files and other supporting files etc) to build the projects.
>
> It is mainly used for personal reference only.

##### BNRContacts #####

Example of interoperability between Objective-C and Swift.

- The project is created with Objective-C first, then added interoperability from Objective-C to Swift (the new contact class is written in Swift)
- Then added another image class in Objective-C, and interoperate from Swift to Objective-C

![BNRContacts](http://choonsiong.com/public/pic/BNRContacts.png)

- - -

##### BNRContactsPush #####

This application started with Objective-C and in the middle added support for Swift also (the model part).

It also shows how to create a table view without using **Table View Controller** template, and added support for **Navigtion Controller** with segues. Kindly note this version is using *push style* which is deprecated since iOS 8.

We first create the table view, then embedded it in the navigation controller (remove the default root view controller came with it) and then add another view controller with push segue.

![BNRContactsPush](http://choonsiong.com/public/pic/BNRContactsPush1.png)
![BNRContactsPush](http://choonsiong.com/public/pic/BNRContactsPush2.png)
![BNRContactsPush](http://choonsiong.com/public/pic/BNRContactsPush3.png)

- - -

##### BNRWorldTrotter #####

Using tab bar controller with different view controllers (map view controller, web view controller).

- Location services (with current location and pre-set locations)
- Loading web content from remote URL

![WorldTrotter](http://choonsiong.com/public/pic/BNRWorldTrotter-1.png)

- - -

##### BNRiTahDoodle #####

A simple to do list with following features:

- Add/remove items
- Save to-do list and load it when the app starts

![iTahDoodle](http://choonsiong.com/public/pic/BNRiTahDoodle.png)

- - -

##### BullsEyeGame #####

A simple game from [iOS Apprentice](https://store.raywenderlich.com/products/ios-apprentice) tutorial, thanks for the lesson! ;)

- Basic use of outlets/actions, autolayout
- Custom image for UIs (esp slider which the image is added programmatically, not via IB)
- Load static HTML file for webview's content
- Simple animation with QuartzCore transition effect
- Separate VC for different screen, and present it modally with segue
- App icons for all supported devices

![BullsEyeGame](http://choonsiong.com/public/pic/bulleye1.jpg)

![BullsEyeGame](http://choonsiong.com/public/pic/bulleye2.jpg)

![BullsEyeGame](http://choonsiong.com/public/pic/bulleye3.jpg)

- - -

##### TableView #####

A simple table view.

![TableView](http://choonsiong.com/public/pic/tableview-20170603.png)

- - -

##### TableViewWithAlert #####

Added alert view when user want to delete an item

![TableViewWithAlert](http://choonsiong.com/public/pic/tableviewwithalert-20170608.png)

- - -

##### TableViewWithDeletingRows #####

Added table view header, edit and add buttons for record manipulation.

![TableViewWithDeletingRows](http://choonsiong.com/public/pic/tableviewwithdeletingrows-20170608.png)

- - -

##### TableViewWithSections #####

A simple table view with two sections.

![TableViewWithSection](http://choonsiong.com/public/pic/tableviewsection-20170603.png)

Table view with two sections and different row size, the "No more item!" will always display even if the number of items for each section is 0.

![TableViewWithSection2](http://choonsiong.com/public/pic/tableviewsection2-20170603.png)

- - -

##### TableViewWithBackgroundImage #####

Added background image to table view's background view.

![TableViewWithBackgroundImage](http://choonsiong.com/public/pic/tableviewsection3-20170603.png)

- - -

##### XMLParser #####

A simple XML parser.

![XMLParser](http://choonsiong.com/public/pic/xmlparser2.png)