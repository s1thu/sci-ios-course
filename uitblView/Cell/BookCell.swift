//
//  BookCell.swift
//  uitblView
//
//  Created by Sithu Win on 17/03/2024.
//

import UIKit

class BookCell: UITableViewCell {

//    @IBOutlet weak var lblBookTitle:UILabel!
    @IBOutlet weak var lblBookTitle:UILabel!
    @IBOutlet weak var lblBookPrice:UILabel!
    
    var data:Book? = nil{
        didSet{
            if let data = data{
                lblBookTitle.text = data.bookName
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(data:Book){
        lblBookTitle.text = data.bookName
    }
    
}
