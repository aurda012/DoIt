//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Alfredo Urdaneta on 7/7/17.
//  Copyright © 2017 AlfredosApps. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var task : Task? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
            label.text = "❗️ \(task!.name!)"
        } else {
            label.text = task!.name
        }

    }

    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }
    
}
