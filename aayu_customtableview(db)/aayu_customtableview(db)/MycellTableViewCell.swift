//
//  MycellTableViewCell.swift
//  aayu_customtableview(db)
//
//  Created by Harry Vataliya on 18/10/22.
//

import UIKit

class MycellTableViewCell: UITableViewCell {

    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var lblprice: UILabel!
    
    @IBOutlet weak var lblavg: UILabel!
    
    @IBOutlet weak var lblcompany: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
