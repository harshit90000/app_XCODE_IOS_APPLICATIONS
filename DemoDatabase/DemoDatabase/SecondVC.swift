//
//  SecondVC.swift
//  DemoDatabase
//
//  Created by Vishal Narvani on 11/10/22.
//  Copyright © 2022 GLS. All rights reserved.
//

import UIKit
import CoreData

class SecondVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
 
    @IBOutlet weak var tblViewData: UITableView!
    
    var appDel = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var context = appDel.persistentContainer.viewContext
        
        let fetchReq = NSFetchRequest<NSManagedObject>(entityName: "Student")
        do {
            try appDel.globalArr = context.fetch(fetchReq)
          
        } catch let err as NSError {
            print(err)
        }
//        context.delete(stuArr[0])
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return appDel.globalArr.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "MyCell")
        
        var singleRow = appDel.globalArr[indexPath.row]
        cell.textLabel?.text = (singleRow.value(forKey: "name")! as! String)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        appDel.selectedIndex = indexPath.row
        self.performSegue(withIdentifier: "wayToThird", sender: self)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        let context = appDel.persistentContainer.viewContext
        context.delete(appDel.globalArr[indexPath.row])
        do {
            try context.save()
        } catch let err as NSError {
            print(err)
        }
        appDel.globalArr.remove(at: indexPath.row)
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        tblViewData.reloadData()
    }

}
