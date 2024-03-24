//
//  BookCell.swift
//  uitblView
//
//  Created by Sithu Win on 17/03/2024.
//

import UIKit

protocol BookCellDelegate{
    func onTapBookmakr(data:Book)
}

class BookCell: UITableViewCell {

//    @IBOutlet weak var lblBookTitle:UILabel!
    @IBOutlet weak var lblBookTitle:UILabel!
    @IBOutlet weak var lblBookPrice:UILabel!
    @IBOutlet weak var btnRecommendbook:UIButton!
    
    var data:Book? = nil{
        didSet{
            if let data = data{
                lblBookTitle.text = data.bookName
            }
        }
    }
    
     var delegate:BookCellDelegate? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        
        btnRecommendbook.addTarget(self, action: #selector(onTapBookmark), for: .touchUpInside)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(data:Book){
        self.data = data
        lblBookTitle.text = data.bookName
        btnRecommendbook.setImage(data.isBookmark ? UIImage(named: "bookmark") : UIImage(named: "bookmark.fill"), for: .normal)


    }
    
    @objc func onTapBookmark(){
        print("On tap bookmark!")
        guard let data = data else { return }
        delegate?.onTapBookmakr(data: data)
    }
    
}
