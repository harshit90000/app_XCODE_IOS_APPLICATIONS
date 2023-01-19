//
//  ThirdViewController.swift
//  aayu_tableview(db)
//
//  Created by Harry Vataliya on 18/10/22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var lblcarname: UILabel!
    
    @IBOutlet weak var lblcarprice: UILabel!
    
    @IBOutlet weak var lblcaravg: UILabel!
    
    @IBOutlet weak var lblcarcompany: UILabel!

    
    var appdel = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblcarname.text = appdel.globalarr[appdel.selectedrow].value(forKey: "carname") as! String
        lblcarprice.text = appdel.globalarr[appdel.selectedrow].value(forKey: "carprice") as! String
        lblcaravg.text = appdel.globalarr[appdel.selectedrow].value(forKey: "caravg") as! String
        lblcarcompany.text = appdel.globalarr[appdel.selectedrow].value(forKey: "carcompany") as! String
        
        
        // Do any additional setup after loading the view.
    }
  
}
