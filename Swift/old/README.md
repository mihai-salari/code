
> This repository contains only Swift playgrounds and command-line applications. 
>
> It is mainly used for personal reference only.

### Polymorphism  and Type Reference ###

```type(of:)``` applied to an object: the polymorphic (internal) type of the object, regardless of how a reference is typed. Static/class members are accessible by passing an object to ```type(of:)```.

```.Type``` sent to a type in a type declaration: the polymorphic type. For example, in a function parameter declaration, ```Person``` means a Person instance is expected (or an instance of one its subclasses), but ```Person.Type``` means that the Person type itself is expected (or the type of one of its subclasses).

```.self``` sent to a type: the type. For example, to pass the ```Person``` type where ```Person.Type``` is expected, you can pass ```Person.self```.

```self``` in instance code, this instance, polymorphically. In static/class code, this type, polymorphically; ```self.init(...)``` instantiates the type.

```Self``` in a method declaration, when specifying the return type, this class or this instance's class, polymorphically.

- - -

### Class Initializers

```
// Class whose subclass has no explicit initializers of its own

class A {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 0)
    }
}

class B: A {
    // No initializer
}

// Note there's no init() inherited
let b1 = B(name: "foo")
let b2 = B(name: "foo", age: 10)
```

```
// Class whose subclass's only explicit initializer is a convenience initializer

class C {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 0)
    }
}

class D: C {
    convenience init(age: Int) {
        self.init(name: "foo", age: age)
    }
}

let d1 = D(name: "foo")
let d2 = D(name: "foo", age: 18)
let d3 = D(age: 18)
```

```
// Class whose subclass declares a designated initializer

class E {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 0)
    }
}

class F: E {
    init(age: Int) {
        super.init(name: "foo", age: age)
    }
}

// Now only one way to initialize F

let f1 = F(age: 21)
```

```
// Class whose subclass overrides its designated initializer

class G {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) {
        self.init(name: name, age: 0)
    }
}

class H: G {
    override init(name: String, age: Int) {
        super.init(name: name, age: age)
    }
}

let h1 = H(name: "foo", age: 8)
let h2 = H(name: "foo") // superclass convenience initializer inherited as well
```

- - -

### General Closure Syntax

```
{ (parameters) -> return_type in 
	// code
}
```

- - -

### Schematic Structure of a Legal Swift File

Note: Below example from *iOS 10 Programming Fundamentals with Swift by Matt Neuburg (O’Reilly). Copyright 2017 Matt Neuburg, 978-1-491-97007-2.*

```
import UIKit

var number = 1

func changeNumber() {
	let new_number = 2

	func sayTwo() {
		print(new_number)
	}

	class Klass {}
	struct Struct {}
	enum Enum {}

	number = new_number
}

class Manny {
	let name = "Manny"

	func sayName() {
		print(name)
	}

	class Klass {}
	struct Struct {}
	enum Enum {}
}

struct Moe {
	let name = "Moe"

	func sayName() {
		print(name)
	}

	class Klass {}
	struct Struct {}
	enum Enum {}
}

enum Jack {
	var name: String {
		return "Jack"
	}

	func sayName() {
		print(name)
	}

	class Klass {}
	struct Struct {}
	enum Enum {}
}
```