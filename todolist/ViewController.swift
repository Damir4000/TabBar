//
//  ViewController.swift
//  todolist
//
//  Created by Дамир Нургалиев on 24.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
  
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var number: UILabel!
    
    
    @IBOutlet weak var textfield2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addTask(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        
        let taskName = textField.text!
        
        var taskUser: [String] = []
        
        if let array = defaults.object(forKey: "taskArray"){
            taskUser = array as! [String]
            
            taskUser.append(taskName)
            
            defaults.set(taskUser, forKey: "taskArray")
        }
        else{
            let array = [taskName]
            
            defaults.set(array, forKey: "taskArray")
            
        }
        
        textField.text = " "
        
       
        
        let defaults2 = UserDefaults.standard
        
        let taskNumber = textfield2.text!
        
        var taskNum: [String] = []
        
        if let array2 = defaults.object(forKey: "taskNumber"){
            taskNum = array2 as! [String]
            
            taskNum.append(taskNumber)
            
            defaults.set(taskNum, forKey: "taskNumber")
            
        }
        
        else{
            let array2 = [taskNumber]
            
            defaults.set(array2, forKey: "taskNumber")
            
        }
        
        textfield2.text = " "
        
        
        
    }
    
    
}

