import UIKit

class ChecklistViewController: UITableViewController {
    
    var checklistItems: [ChecklistItem]
    
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
        checklistItems = [ChecklistItem]()
        
        for i in 0...100 {
            let foo  = ChecklistItem()
            foo.text = "I am fool #\(i)"
            foo.isChecked = false
            checklistItems.append(foo)
        }
        
//        let row0item = ChecklistItem()
//        row0item.text = row0text
//        row0item.isChecked = row0checked
//        checklistItems.append(row0item)
//        
//        let row1item = ChecklistItem()
//        row1item.text = row1text
//        row1item.isChecked = row1checked
//        checklistItems.append(row1item)
//        
//        let row2item = ChecklistItem()
//        row2item.text = row2text
//        row2item.isChecked = row2checked
//        checklistItems.append(row2item)
//        
//        let row3item = ChecklistItem()
//        row3item.text = row3text
//        row3item.isChecked = row3checked
//        checklistItems.append(row3item)
//        
//        let row4item = ChecklistItem()
//        row4item.text = row4text
//        row4item.isChecked = row4checked
//        checklistItems.append(row4item)
        
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
        return checklistItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let item = checklistItems[indexPath.row]
        
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)

        //configureCheckmark(for: cell, at: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            
            let item = checklistItems[indexPath.row]
            item.toggleChecked()
            configureCheckmark(for: cell, with: item)
            //configureCheckmark(for: cell, at: indexPath)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    
    func configureCheckmark(for cell: UITableViewCell, with item: ChecklistItem) {
        if item.isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        let item = checklistItems[indexPath.row]
        
        if item.isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
}
