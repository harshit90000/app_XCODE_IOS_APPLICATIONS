//
//  ThirdViewController.swift
//  aayu_custometableview(wdb)
//
//  Created by Harry Vataliya on 17/10/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var lblprice: UILabel!
    
    @IBOutlet weak var lblavg: UILabel!
    
    @IBOutlet weak var lblcompany: UILabel!
    
    var appdel = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        lblname.text = appdel.globalarr[appdel.selectedrow].carname
        lblprice.text = appdel.globalarr[appdel.selectedrow].carprice
        lblavg.text = appdel.globalarr[appdel.selectedrow].caravg
        lblcompany.text = appdel.globalarr[appdel.selectedrow].carcompany
 
        // Do any additional setup after loading the view.
    }

}
