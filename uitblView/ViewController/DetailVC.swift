//
//  DetailVC.swift
//  uitblView
//
//  Created by Sithu Win on 20/03/2024.
//

import UIKit

class DetailVC: UIViewController {
    
    
    @IBOutlet weak var bookTitle:UILabel!
    @IBOutlet weak var bookAuthor:UILabel!
    @IBOutlet weak var star1:UIImageView!
    @IBOutlet weak var star2:UIImageView!
    @IBOutlet weak var star3:UIImageView!
    @IBOutlet weak var star4:UIImageView!
    @IBOutlet weak var starLbl:UILabel!
    @IBOutlet weak var backBtn:UIButton!
    @IBOutlet weak var priceBtn:UIButton!


    var data:Book? = nil;

    override func viewDidLoad() {
        super.viewDidLoad()

        setupBindings();
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
    }

    func setupBindings(){
        backBtn.addTarget(self, action: #selector(onTapDismiss), for: .touchUpInside)
        
        if let data = data{
           
            bookTitle.text = data.bookName;
            bookAuthor.text = data.author
            
            switch data.rating {
            case 1:
                star1.image = .fullstar
                starLbl.text = String(format: "%f", data.rating);
                break;
            case 2:
                star1.image = .fullstar
                star2.image = .fullstar
                starLbl.text = String(format: "%f", data.rating);
                break;
            case 3:
                star1.image = .fullstar
                star2.image = .fullstar
                star3.image = .fullstar
                starLbl.text = String(format: "%f", data.rating);
                break;
            case 4:
                star1.image = .fullstar
                star2.image = .fullstar
                star3.image = .fullstar
                star4.image = .fullstar
                starLbl.text = String(format: "%f", data.rating);
            default:
                print()
            }
            
            priceBtn.titleLabel?.text = String(format: "%f", data.bookPrice);
        }
    }
    
    @objc func onTapDismiss(){
        dismiss(animated: true)
    }
    
}
