//
//  userTableViewCell.swift
//  Parenting
//
//  Created by 大場史温 on 2021/06/03.
//

import UIKit

class userTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var useritemLabel: UILabel!

    @IBOutlet weak var userimageView: UIImageView!
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
