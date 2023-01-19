//
//  ViewController.swift
//  Demo_13_10
//
//  Created by Harry Vataliya on 13/10/22.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var signupview: UIView!
    @IBOutlet weak var loginview: UIView!
    
    
    @IBOutlet weak var segmentoutlet: UISegmentedControl!
    
    
    @IBAction func segmentctrl(_ sender: Any) {
        
        if(segmentoutlet.selectedSegmentIndex==0){
            signupview.isHidden=true
            loginview.isHidden=false
        }
        else{
            signupview.isHidden=false
            loginview.isHidden=true
        }
    }
    
    @IBOutlet weak var suname: UITextField!
    
    @IBOutlet weak var supassword: UITextField!
    
    @IBOutlet weak var suage: UITextField!
    
    @IBAction func signupbtn(_ sender: Any) {
        let appdel=UIApplication.shared.delegate as! AppDelegate
        let context=appdel.persistentContainer.viewContext
        
        let entity=NSEntityDescription.entity(forEntityName: "UserTable", in: context)
        let newrow = NSManagedObject(entity: entity!, insertInto: context)
        
        newrow.setValue(suname.text, forKey: "uname")
        newrow.setValue(supassword.text, forKey: "password")
        newrow.setValue(suage.text, forKey: "age")
        
        do {
            try context.save()
        } catch let err as NSError {
                print(err)
        }
    }
    
    
    @IBOutlet weak var luname: UITextField!
    
    @IBOutlet weak var lpassword: UITextField!
    
    @IBOutlet weak var llabel: UILabel!
    
    @IBAction func loginbtn(_ sender: Any) {
        let appdel=UIApplication.shared.delegate as! AppDelegate
        let context=appdel.persistentContainer.viewContext
        
        let fetchreq = NSFetchRequest<NSManagedObject>(entityName: "UserTable")
        do {
            try appdel.globalarr=context.fetch(fetchreq)
        } catch let err as NSError {
            print(err)
        }
        var i=0
        while i<appdel.globalarr.count{
            if(luname.text == (appdel.globalarr[i].value(forKey: "uname") as! String)
               && lpassword.text == (appdel.globalarr[i].value(forKey: "password"))as! String)
            {
                performSegue(withIdentifier: "waysegue", sender: self)
            }
            else{
                llabel.text = "Invalid id & password"
            }
            i=i+1
        }
    }
}

