//
//  SecondTableViewCell.swift
//  liveScreen
//
//  Created by Sierra 4 on 16/05/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblAdress: UILabel!
    @IBOutlet weak var profilepic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
