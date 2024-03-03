//
//  RegisterVC.swift
//  helloworldinteraction
//
//  Created by Sithu Win on 03/03/2024.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var btnDismiss:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    private func setupBindings(){
        btnDismiss.addTarget(self, action: #selector(onTapClose), for: .touchUpInside)
    }

    @objc func onTapClose(){
        
    }
    
}
