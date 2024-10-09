//
//  HomeTableViewCell.swift
//  FinalProject
//
//  Created by english on 2024-04-17.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var titleText: UILabel!
    
    @IBOutlet weak var descText: UILabel!
    
    @IBOutlet weak var dateText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
