//
//  RegisterVC.swift
//  helloworldinteraction
//
//  Created by Sithu Win on 03/03/2024.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var btnDismiss:UIButton!
    @IBOutlet weak var btnRegister:UIButton!
    @IBOutlet weak var tfEmail:UITextField!
    @IBOutlet weak var tfUser:UITextField!
    @IBOutlet weak var segGender:UISegmentedControl!
    @IBOutlet weak var tfDOB:UITextField!
    @IBOutlet weak var tfPwd:UITextField!
    @IBOutlet weak var tfConPwd:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    private func setupBindings(){
        btnDismiss.addTarget(self, action: #selector(onTapClose), for: .touchUpInside)
    }

    @objc func onTapClose(){
        
    }
    
}
