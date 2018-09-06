//
//  ViewController.swift
//  MiniTasks
//
//  Created by Pulkit Aggarwal on 04/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

var taskArray = [String]()
var datesArray = [String]()
let defaults = UserDefaults.standard


class ViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        taskArray = defaults.stringArray(forKey: "taskArray") ?? [String]()
        datesArray = defaults.stringArray(forKey: "datesArray") ?? [String]()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row + 1). \(taskArray[indexPath.row])"
        cell.detailTextLabel?.text = datesArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskArray.count
    }

    @IBAction func close(segue: UIStoryboardSegue)
    {
        
    }
}

