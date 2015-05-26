//
//  CustomCell.swift
//  teibo3
//
//  Created by minowaryohei on 2015/05/20.
//  Copyright (c) 2015年 rm. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var customImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
