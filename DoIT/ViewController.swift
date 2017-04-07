//
//  ViewController.swift
//  DoIT
//
//  Created by callum brennan on 07/04/2017.
//  Copyright © 2017 callum brennan Mementcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
}

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "‼️\(task.name)"
        }else {
            cell.textLabel?.text = task.name
        }

        return cell
    }
    
    func makeTasks() -> [Task] {
        
        let task1 = Task()
        task1.name = "Walk Luna"
        task1.important = false

        
        let task2 = Task()
        task2.name = "Go Shopping"
        task2.important = true
        
        let task3 = Task()
        task3.name = "make DOIT app"
        task3.important = true
        
        return [ task1,task2,task3]
        
    }
    
}


