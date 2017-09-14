//
//  ViewController.swift
//  BNRToDo
//
//  Created by Lee Choon Siong on 2017/05/23.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDataSource, NSControlTextEditingDelegate {
    
    // MARK: - Properties
    
    @IBOutlet weak var addTaskButton: NSButton!
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var tableView: NSTableView!
    
    var tasks = [String]()

    // MARK: - NSViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    // MARK: - NSTableViewDataSource
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return self.tasks.count
    }
    
    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        let task = self.tasks[row]
        
        return task
    }
    
    // MARK: - NSControlTextEditingDelegate
    
    override func controlTextDidEndEditing(_ obj: Notification) {
        // Apparently this method is not required for the challenge...
        
        let row = self.tableView.selectedRow
        
        print("selectedRow: \(row)")
    }
    
    // MARK: - Actions
    
    @IBAction func addTask(_ sender: NSButton) {
        let task = self.textField.stringValue
        
        if !(task.isEmpty) {
            self.tasks.append(task)
            print("Adding new task: \"\(task)\"")
            print(tasks)
            self.tableView.reloadData()
        } else {
            print("Text field is empty")
        }
        
        // Clear text field after task added
        self.textField.stringValue = ""
    }
    
    @IBAction func taskChanged(_ sender: NSTextField) {
        let row = self.tableView.selectedRow
        let oldTask = tasks[row]
        
        print("Old task: \(oldTask)")
        print("New task: \(sender.stringValue)")
        
        tasks[row] = sender.stringValue
        
        print(tasks)
        
        self.tableView.reloadData()
    }
}
