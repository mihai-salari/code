import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0item: ChecklistItem
    var row1item: ChecklistItem
    var row2item: ChecklistItem
    var row3item: ChecklistItem
    var row4item: ChecklistItem
    
    var row0text = "Walk the fish"
    var row1text = "Feed the tree"
    var row2text = "Sleep for two days"
    var row3text = "Take bath until you are tired"
    var row4text = "Eat until die"

    var row0checked = false
    var row1checked = true
    var row2checked = false
    var row3checked = true
    var row4checked = false
    
    required init?(coder aDecoder: NSCoder) {
        row0item = ChecklistItem()
        row0item.text = row0text
        row0item.isChecked = row0checked
        
        row1item = ChecklistItem()
        row1item.text = row1text
        row1item.isChecked = row1checked
        
        row2item = ChecklistItem()
        row2item.text = row2text
        row2item.isChecked = row2checked
        
        row3item = ChecklistItem()
        row3item.text = row3text
        row3item.isChecked = row3checked
        
        row4item = ChecklistItem()
        row4item.text = row4text
        row4item.isChecked = row4checked
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row % 5 == 0 {
            label.text = row0item.text
        } else if indexPath.row % 5 == 1 {
            label.text = row1item.text
        } else if indexPath.row % 5 == 2 {
            label.text = row2item.text
        } else if indexPath.row % 5 == 3 {
            label.text = row3item.text
        } else if indexPath.row % 5 == 4 {
            label.text = row4item.text
        }
        
        configureCheckmark(for: cell, at: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
           if indexPath.row == 0 {
                row0item.isChecked = !row0item.isChecked
            } else if indexPath.row == 1 {
                row1item.isChecked = !row1item.isChecked
            } else if indexPath.row == 2 {
                row2item.isChecked = !row2item.isChecked
            } else if indexPath.row == 3 {
                row3item.isChecked = !row3item.isChecked
            } else if indexPath.row == 4 {
                row4item.isChecked = !row4item.isChecked
            }
            
            configureCheckmark(for: cell, at: indexPath)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        var isChecked = false
        
        if indexPath.row == 0 {
            isChecked = row0item.isChecked
        } else if indexPath.row == 1 {
            isChecked = row1item.isChecked
        } else if indexPath.row == 2 {
            isChecked = row2item.isChecked
        } else if indexPath.row == 3 {
            isChecked = row3item.isChecked
        } else if indexPath.row == 4 {
            isChecked = row4item.isChecked
        }
        
        if isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }

    }
}
