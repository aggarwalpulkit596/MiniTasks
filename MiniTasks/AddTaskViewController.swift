//
//  AddTaskViewController.swift
//  MiniTasks
//
//  Created by Pulkit Aggarwal on 05/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var picketView: UIPickerView!
    
    var selectedTask = ""
    
    var tasks = ["Select task", "Go to dentist", "Meet friends", "Iron my clothes", "Call parents", "Pay bills", "Paint desk", "Call insurance company", "Cook dinner", "Buy gifts for wife", "Take kids out", "Go for swimming lesson", "Play tennis", "Clean the house", "Track package"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picketView.dataSource = self
        picketView.delegate = self
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return tasks.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return tasks[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
}
