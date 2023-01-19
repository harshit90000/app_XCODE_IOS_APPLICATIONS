//
//  ViewController.swift
//  DemoDatabase
//
//  Created by Vishal Narvani on 11/10/22.
//  Copyright © 2022 GLS. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var txtRollNo: UITextField!
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
               //select
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionSave(_ sender: Any) {
        
        let appDel = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDel.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Student", in: context)
        
        let newStu = NSManagedObject(entity: entity!, insertInto: context)
        
        newStu.setValue(txtName.text, forKey: "name")
        newStu.setValue(txtRollNo.text, forKey: "rollNo")
        
        do {
            try context.save()
        } catch let err as NSError {
            print(err)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

