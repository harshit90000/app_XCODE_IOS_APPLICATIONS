//
//  ViewController.swift
//  aayu_customtableview(db)
//
//  Created by Harry Vataliya on 18/10/22.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var appdel = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var txtcarname: UITextField!
    @IBOutlet weak var txtcarprice: UITextField!
    @IBOutlet weak var txtcaravg: UITextField!
    @IBOutlet weak var txtcarcompany: UITextField!
    
    @IBAction func btnadd(_ sender: Any) {
        var context = appdel.persistentContainer.viewContext
        
        var entity = NSEntityDescription.entity(forEntityName: "Car", in: context)
        
        var crow = NSManagedObject(entity: entity!, insertInto: context)
        
        crow.setValue(txtcarname.text!, forKey: "carname")
        crow.setValue(txtcarprice.text!, forKey: "carprice")
        crow.setValue(txtcaravg.text!, forKey: "caravg")
        crow.setValue(txtcarcompany.text!, forKey: "carcompany")
        
        do {
            try  context.save()
        } catch let err as NSError {
            print(err)
        }
        
        txtcarname.text = ""
        txtcarprice.text = ""
        txtcaravg.text = ""
        txtcarcompany.text = ""
    }
    
    @IBAction func btnnext(_ sender: Any) {
        self.performSegue(withIdentifier: "tablesegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
