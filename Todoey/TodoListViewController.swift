//
//  ViewController.swift
//  Todoey
//
//  Created by Wim Nagtegaal on 04/04/2018.
//  Copyright © 2018 WPN Systems. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

        let itemArray = ["FindMike", "Buy eggsos", "Destroy demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

        //MARK - Tableview datasource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
        
    }
    
    //MARK - Tableview delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        // after clicking it stays selected -> grey. Deselect it to remove the grey color
        tableView.deselectRow(at: indexPath, animated: true)
        
        // flip the selected indicator
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            // remove the checkmark
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            // add the checkmark
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
    }

}

