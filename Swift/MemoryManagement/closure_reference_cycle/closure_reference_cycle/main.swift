import Foundation

// So that we can set them to nil later
var author: Author? = Author(name: "Cosmin", email: "cosmin@example.com")
var tutorial: Tutorial? = Tutorial(author: author!, title: "Memory Management", category: "Swift", date: Date())
var editor: Editor? = Editor(name: "Ray", email: "ray@example.com")

author?.tutorial = tutorial
tutorial?.editor = editor
editor?.tutorial = tutorial

print(tutorial!.tutorialDescription())

author = nil
tutorial = nil
editor = nil
