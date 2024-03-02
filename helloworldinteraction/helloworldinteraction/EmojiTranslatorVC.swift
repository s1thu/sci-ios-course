//
//  EmojiTranslatorVC.swift
//  helloworldinteraction
//
//  Created by Sithu Win on 02/03/2024.
//

import UIKit

class EmojiTranslatorVC: UIViewController {
    @IBOutlet weak var btnLov: UIButton!
    @IBOutlet weak var btnHaha: UIButton!
    @IBOutlet weak var btnGhot: UIButton!
    @IBOutlet weak var btnOctopus: UIButton!
    
    let dictEmoji:[String:String] = [
        "🐙" : "Octopus",
        "😂" : "Haha",
        "👻" : "Ghost",
        "🩷" : "Lov"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

//        btnOctopus.layer.cornerRadius = 10
//        btnGhot.layer.cornerRadius = 10
//        btnLov.layer.cornerRadius = 10
//        btnHaha.layer.cornerRadius = 10
    }
    
    func setupView(){
//        btnOctopus.addTarget(self, action: #selector(onTapEmoji(sender:)), for: .touchUpInside)
//        btnGhot.addTarget(self, action: #selector(onTapEmoji(sender:)), for: .touchUpInside)
//        btnHaha.addTarget(self, action: #selector(onTapEmoji(sender:)), for: .touchUpInside)
//        btnLov.addTarget(self, action: #selector(onTapEmoji(sender:)), for: .touchUpInside)
        
        [btnOctopus,btnGhot,btnHaha,btnLov].compactMap{$0}.forEach {
            $0.addTarget(self, action: #selector(onTapEmoji(sender:)), for: .touchUpInside)
        }
    }
    
    @objc func onTapEmoji(sender: UIButton){
        
        let emoji = sender.titleLabel?.text
        
        guard let emoji = emoji else { return }
        
        let emojiText = dictEmoji[emoji]
        
        guard let emojiText = emojiText else { return }
        
        showAlert(with: emoji, and: emojiText, okBtnTitle: "Ok") { action in
            //
        }
//        if sender == btnOctopus{
//            showAlert(with: "Octopus", and: "Octopus emoji", okBtnTitle: "Ok") { action in
//                //
//            }
//        }else if sender == btnGhot{
//            showAlert(with: "Ghost", and: "Ghost", okBtnTitle: "OK") { action in
//                //
//            }
//        }else if sender == btnHaha{
//            showAlert(with: "Haha", and: "Haha", okBtnTitle: "OK") { action in
//                //
//            }
//        }else if sender == btnLov{
//            showAlert(with: "Love", and: "Love", okBtnTitle: "OK") { action in
//                //
//            }
//            }
    }


}
