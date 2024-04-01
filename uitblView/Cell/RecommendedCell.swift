//
//  RecommendedCell.swift
//  uitblView
//
//  Created by Sithu Win on 24/03/2024.
//

import UIKit

class RecommendedCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
