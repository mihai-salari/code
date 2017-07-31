import UIKit

class TodosViewController: UIViewController {
    let tableView = UITableView()
    let addButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        layoutView()
        style()
    }
}
