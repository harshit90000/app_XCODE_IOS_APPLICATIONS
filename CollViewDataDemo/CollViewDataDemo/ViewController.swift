//
//  ViewController.swift
//  CollViewDataDemo
//
//  Created by Vishal Narvani on 27/09/22.
//  Copyright © 2022 GLS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPerc: UITextField!
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionSave(_ sender: Any)
    {
        let stu = Student()
        
        stu.name = txtName.text!
        stu.percentage = Double(txtPerc.text!)!
        let appDel = UIApplication.shared.delegate as! AppDelegate
        
        appDel.arrStudents.append(stu)
        print(appDel.arrStudents.count)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

