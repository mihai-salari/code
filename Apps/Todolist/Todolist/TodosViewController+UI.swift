import UIKit

// MARK: - Setup
extension TodosViewController {
    func setup() {
        title = "Todos"
        view.backgroundColor = UIColor.gray
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 80
        tableView.contentInset = UIEdgeInsetsMake(0, 0, 100, 0)
        view.addSubview(tableView)
        
        addButton.addTarget(self, action: #selector(addTodoButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(addButton)
    }
}

// MARK: - Layout 
extension TodosViewController {
    func layoutView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: tableView.superview!.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: tableView.superview!.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: tableView.superview!.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: tableView.superview!.rightAnchor)])
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            addButton.bottomAnchor.constraint(equalTo: addButton.superview!.bottomAnchor, constant: -5.0),
            addButton.centerXAnchor.constraint(equalTo: addButton.superview!.centerXAnchor),
            addButton.widthAnchor.constraint(equalTo: addButton.heightAnchor),
            addButton.heightAnchor.constraint(equalToConstant: 60)])
    }
}

// MARK: - Style
extension TodosViewController {
    func style() {
        view.backgroundColor = UIColor.white
        addButton.setImage(UIImage.init(named: "add-button"), for: .normal)
    }
}
