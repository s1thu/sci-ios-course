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
    
    override func loadView() {
        super.loadView()
    }
    
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
        
        [btnOctopus,btnGhot,btnHaha,btnLov].addTarget(action: #selector(onTapEmoji(sender:)))
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated) // viewWillAppear yk behaviours twy akone lone ko inherit lok chin lo ma hok yin ko br thr ko yay.
        
        //getLocation
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //API call => Server loading
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    deinit{
        // screen kill
        //chang screen
    }


}
