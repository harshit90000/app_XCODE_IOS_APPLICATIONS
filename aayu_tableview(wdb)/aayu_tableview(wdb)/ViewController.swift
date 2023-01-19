//
//  ViewController.swift
//  aayu_tableview(wdb)
//
//  Created by Harry Vataliya on 17/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtprice: UITextField!
    @IBOutlet weak var txtavg: UITextField!
    @IBOutlet weak var txtcompany: UITextField!
    
    var appdel = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func btnadd(_ sender: Any) {
        var obj = Car()
        obj.carname = txtname.text!
        obj.carprice = txtprice.text!
        obj.caravg = txtavg.text!
        obj.carcompany = txtcompany.text!
        
        appdel.globalarr.append(obj)
        
        txtname.text = ""
        txtprice.text = ""
        txtavg.text = ""
        txtcompany.text = ""
        
    }
    
    @IBAction func btnnext(_ sender: Any) {
        self.performSegue(withIdentifier: "tablesegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

