#### Memory Layout ####

Virtual address space of a running Objective-C program:

![picture](http://choonsiong.com/public/pic/virtual_address_space_objc_program.png)

- The __text segment__ contains the program's executable code and read-only data.
- The __data segment__ contains read-write data including global variables.
- The __heap__ contains blocks of memory that can be dispensed to the program on request. When more memory is required, the system may expand the heap upward.

- - -

Naming variables or functions:

- ```first_name``` for plain C variable or function
- ```fullName``` for Objective-C variable or function (and method)
- ```_realName``` for private variable (e.g. instance variable)

Class extension strategies:

- If you want to add new instance variables to a class or override a method of a class, use __subclassing__.
- If you want to hide the implementation of a class, simplify a class's interface, or incorporate more code reuse, create a __class cluster__.
- If you want to add a method to a class, create a __class category__.

- - -

#### Apple Reference/Guide  ####

- [Programming with Objective-C](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/)
- [Concepts in Objective-C Programming](https://developer.apple.com/library/content/documentation/General/Conceptual/CocoaEncyclopedia/)
- [Objective-C feature availability index](https://developer.apple.com/library/content/releasenotes/ObjectiveC/ObjCAvailabilityIndex/)
- [Advanced Memory Management Programming Guide](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/MemoryMgmt/)
- [Memory Management Programming Guide for Core Foundation](https://developer.apple.com/library/content/documentation/CoreFoundation/Conceptual/CFMemoryMgmt/)
- [Objective-C](https://developer.apple.com/documentation/objectivec)
- [Objective-C Runtime](https://developer.apple.com/documentation/objectivec/objective_c_runtime)
- [Objective-C Runtime Programming Guide](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/)
- [Clang Documentation](http://clang.llvm.org/docs/index.html)
- [Key-Value Coding Programming Guide](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/KeyValueCoding/)
- [Concurrency Programming Guide](https://developer.apple.com/library/content/documentation/General/Conceptual/ConcurrencyProgrammingGuide/)

##### Cocoa #####

- [Using Swift with Cocoa and Objective-C](https://developer.apple.com/library/content/documentation/Swift/Conceptual/BuildingCocoaApps/)

##### Classes #####

- [Predicate Programming Guide](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Predicates/)
- [String Programming Guide](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Strings/)

##### Apps #####

- [App Programming Guide for iOS](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/)
- [Mac App Programming Guide](https://developer.apple.com/library/content/documentation/General/Conceptual/MOSXAppProgrammingGuide/)
- [Document-Based App Programming Guide for Mac](https://developer.apple.com/library/content/documentation/DataManagement/Conceptual/DocBasedAppProgrammingGuideForOSX/)

#### Misc ####

- [C Elements of Style by Steve Oualline](http://www.oualline.com/books.free/style/index.html)