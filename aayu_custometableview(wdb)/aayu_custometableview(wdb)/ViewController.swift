//
//  ViewController.swift
//  aayu_custometableview(wdb)
//
//  Created by Harry Vataliya on 17/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtcarname: UITextField!
    
    @IBOutlet weak var txtcarprice: UITextField!
    
    @IBOutlet weak var txtcaravg: UITextField!
    
    @IBOutlet weak var txtcarcompany: UITextField!
    
    var appdel = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func btnadd(_ sender: Any) {
       
        var obj = Car()
        obj.carname = txtcarname.text!
        obj.carprice = txtcarprice.text!
        obj.caravg = txtcaravg.text!
        obj.carcompany = txtcarcompany.text!
        
        appdel.globalarr.append(obj)
    
        txtcarname.text=""
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

