//
//  SecondViewController.swift
//  aayu_custometableview(wdb)
//
//  Created by Harry Vataliya on 17/10/22.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var appdel = UIApplication.shared.delegate as! AppDelegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appdel.globalarr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var myc = tableView.dequeueReusableCell(withIdentifier: "MycellTableViewCell", for: indexPath) as! MycellTableViewCell
        myc.lblcarname.text = appdel.globalarr[indexPath.row].carname
        myc.lblcarprice.text = appdel.globalarr[indexPath.row].carprice
        myc.lblcaravg.text = appdel.globalarr[indexPath.row].caravg
        myc.lblcarcompany.text = appdel.globalarr[indexPath.row].carcompany
        
        return myc
        
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "lblsegue", sender: self)
        appdel.selectedrow = indexPath.row
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        appdel.globalarr.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
