//
//  SigninVC.swift
//  kayak-clone
//
//  Created by Sithu Win on 27/03/2024.
//

import UIKit

class SigninVC: UIViewController {
    
    @IBOutlet weak var btnConWithEmail:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }
    
    func setupBindings(){
        btnConWithEmail.addTarget(self, action: #selector(navigateToSignemail), for: .touchUpInside)
    }
    
    @objc func navigateToSignemail(){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let signinemailVC = storyboard.instantiateViewController(withIdentifier: "SigninemailVC") as? SigninemailVC
        guard let signinemailVC = signinemailVC else { print("This is null")
            return  }
        rootNC?.setNavigationBarHidden(true, animated: false)
        rootNC?.pushViewController(signinemailVC, animated: true)
    }

}
