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
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var selectedTask = ""
    
    @IBOutlet weak var addTaskBtn: UIButton!
    
        var dateFormatter = DateFormatter()
    
    var tasks = ["Select task", "Go to dentist", "Meet friends", "Iron my clothes", "Call parents", "Pay bills", "Paint desk", "Call insurance company", "Cook dinner", "Buy gifts for wife", "Take kids out", "Go for swimming lesson", "Play tennis", "Clean the house", "Track package"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picketView.dataSource = self
        picketView.delegate = self
        
        addTaskBtn.isEnabled = false
        
        datePicker.minimumDate = Date() // minimum date not less than current date

        
        dateFormatter.dateFormat = "EE dd-MMM-yyyy HH:mm" //ee for day
        
        addTaskBtn.layer.cornerRadius = 15
        addTaskBtn.layer.borderColor = UIColor.white.cgColor
        addTaskBtn.layer.borderWidth = 1.0
        addTaskBtn.clipsToBounds = true
        
        
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
        
        if row == 0
        {
            addTaskBtn.isEnabled = false
        }
        else
        {
            addTaskBtn.isEnabled = true
            selectedTask = tasks[row]
        }
        
    }
    @IBAction func addTask(_ sender: Any) {
        let date = datePicker.date
        let dateStr = dateFormatter.string(from: date)
        
        taskArray.append(selectedTask)
        datesArray.append(dateStr)
        defaults.set(taskArray, forKey: "taskArray")
        defaults.set(datesArray, forKey: "datesArray")
        
        dismiss(animated: true, completion: nil)
    }
}
