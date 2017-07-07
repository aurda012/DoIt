//
//  CreateToDoViewController.swift
//  DoIt
//
//  Created by Alfredo Urdaneta on 7/7/17.
//  Copyright © 2017 AlfredosApps. All rights reserved.
//

import UIKit

class CreateToDoViewController: UIViewController {


    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var toDoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = toDoTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop Back
        navigationController!.popViewController(animated: true)
    }

}
