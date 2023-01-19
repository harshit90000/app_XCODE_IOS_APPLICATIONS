//
//  SecondViewController.swift
//  aayu_tableview(db)
//
//  Created by Harry Vataliya on 18/10/22.
//

import UIKit
import CoreData

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var appdel = UIApplication.shared.delegate as! AppDelegate
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var context = appdel.persistentContainer.viewContext
        
        var fetchdata = NSFetchRequest<NSManagedObject>(entityName: "Car")

        do {
            try appdel.globalarr = context.fetch(fetchdata)
        } catch let err as NSError {
            print(err)
        }
        
        // Do any additional setup after loading the view.
    }
    
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return appdel.globalarr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var myc = UITableViewCell(style: .subtitle, reuseIdentifier: "myc")
        myc.textLabel?.text = appdel.globalarr[indexPath.row].value(forKey: "carname") as! String
        myc.detailTextLabel?.text = appdel.globalarr[indexPath.row].value(forKey: "carprice") as! String
        myc.detailTextLabel?.text = appdel.globalarr[indexPath.row].value(forKey: "caravg") as! String
        myc.detailTextLabel?.text = appdel.globalarr[indexPath.row].value(forKey: "carcompany") as! String
        
        return myc
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "lblsegue", sender: self)
        appdel.selectedrow = indexPath.row
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        var context = appdel.persistentContainer.viewContext
        context.delete(appdel.globalarr[indexPath.row])
        
        do {
            try context.save()
        } catch let err as NSError {
            print(err)
        }
        
        appdel.globalarr.remove(at: indexPath.row)
        tableView.reloadData()
    }

}
