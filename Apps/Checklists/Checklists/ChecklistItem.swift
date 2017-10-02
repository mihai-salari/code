import Foundation

class ChecklistItem {
    var text = ""
    var isChecked = false
    
    func toggleChecked() {
        isChecked = !isChecked
    }
}
