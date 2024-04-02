//
//  OneCell.swift
//  delegateprotocolpattern
//
//  Created by Sithu Win on 02/04/2024.
//

import UIKit

protocol OnecellDelegate{
    func onTapSendDataToParent(sendData:Int)
}

class OneCell: UITableViewCell {
    
    @IBOutlet weak var btnDatatoParentCtrll:UIButton!
    
    let number:Int = 10 //this can be anything this is just mock
    var delegate:OnecellDelegate? = nil

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        
        btnDatatoParentCtrll.addTarget(self, action: #selector(onSendDataToParent), for: .touchUpInside)
    }

    @objc func onSendDataToParent(){
        delegate?.onTapSendDataToParent(sendData: number)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
