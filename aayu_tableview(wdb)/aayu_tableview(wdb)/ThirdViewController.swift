//
//  ThirdViewController.swift
//  aayu_tableview(wdb)
//
//  Created by Harry Vataliya on 17/10/22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var lblcarname: UILabel!
    @IBOutlet weak var lblcarprice: UILabel!
    @IBOutlet weak var lblcaravg: UILabel!
    @IBOutlet weak var lblcarcom: UILabel!
    
    var appdel = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblcarname.text = appdel.globalarr[appdel.selectedrow].carname
        lblcarprice.text = appdel.globalarr[appdel.selectedrow].carprice
        lblcaravg.text = appdel.globalarr[appdel.selectedrow].caravg
        lblcarcom.text = appdel.globalarr[appdel.selectedrow].carcompany
        
        // Do any additional setup after loading the view.
    }
    
}
