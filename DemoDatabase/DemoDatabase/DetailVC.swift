//
//  DetailVC.swift
//  DemoDatabase
//
//  Created by Vishal Narvani on 12/10/22.
//  Copyright © 2022 GLS. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var lblRollNo: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    var appDel = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var singleRow = appDel.globalArr[appDel.selectedIndex]
        lblName.text = (singleRow.value(forKey: "name")! as! String)
        lblRollNo.text = (singleRow.value(forKey: "rollNo")! as! String)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionDelete(_ sender: Any)
    {
        let context = appDel.persistentContainer.viewContext
        context.delete(appDel.globalArr[appDel.selectedIndex])
        
        do {
            try context.save()
        } catch let err as NSError {
            print(err)
        }
        appDel.globalArr.remove(at: appDel.selectedIndex)
        self.navigationController?.popViewController(animated: true)
        

    }
}
