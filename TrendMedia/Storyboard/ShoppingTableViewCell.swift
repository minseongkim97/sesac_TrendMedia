//
//  ShoppingTableViewCell.swift
//  TrendMedia
//
//  Created by MIN SEONG KIM on 2022/07/20.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {

    @IBOutlet weak var shoppingProductLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
