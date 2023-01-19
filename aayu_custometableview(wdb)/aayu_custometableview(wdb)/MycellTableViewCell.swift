//
//  MycellTableViewCell.swift
//  aayu_custometableview(wdb)
//
//  Created by Harry Vataliya on 18/10/22.
//

import UIKit

class MycellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblcarname: UILabel!
    @IBOutlet weak var lblcarprice: UILabel!
    @IBOutlet weak var lblcaravg: UILabel!
    @IBOutlet weak var lblcarcompany: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
