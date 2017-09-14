//
//  ViewController.swift
//  BNRiTahDoodle
//
//  Created by Lee Choon Siong on 2017/06/18.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    // MARK: - Properties
    
    let todoList = TodoList()
    
    // MARK: - Outlets
    
    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!

    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(#function): selected row \(indexPath.row)")
        isEditing = true // To show the DELETE button
    }
    
    // MARK: - Actions

    @IBAction func addButtonPressed(_ sender: UIButton) {
        guard let todo = itemTextField.text, !todo.isEmpty else {
            print("\(#function): text field is empty")
            return
        }
        
        todoList.add(todo)
        tableView.reloadData()
        
        itemTextField.text = ""
        
        print(todoList)
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        self.itemTextField.resignFirstResponder()
    }
}

