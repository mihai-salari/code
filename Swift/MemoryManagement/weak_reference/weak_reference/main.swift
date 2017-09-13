import Foundation

// So that we can set them to nil later
var tutorial: Tutorial? = Tutorial(title: "Memory Management", category: "Swift", date: Date())
var editor: Editor? = Editor(name: "Ray", email: "ray@example.com")

tutorial?.editor = editor
editor?.tutorial = tutorial

// Both object's deinit never get call due to strong reference cycle
tutorial = nil
editor = nil
