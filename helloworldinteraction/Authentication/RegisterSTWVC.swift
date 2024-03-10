//
//  RegisterSTWVC.swift
//  helloworldinteraction
//
//  Created by Sithu Win on 10/03/2024.
//

import UIKit

class RegisterSTWVC: UIViewController {
    
    @IBOutlet weak var btnRegister:UIButton!
    @IBOutlet weak var tfEmail:UITextField!
    @IBOutlet weak var tfUsername:UITextField!
    @IBOutlet weak var tfDob:UITextField!
    @IBOutlet weak var tfPassword:UITextField!
    @IBOutlet weak var tfConPassword:UITextField!
    @IBOutlet weak var imgCheck:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupBindings()
        
    }
    
    //UI label twy color twy disable enable lok tr twy ko setupView mhr htae
    func setupViews(){
        
    }
    
    //Btn twy textfield twy ko event chate tr ko binding mhr htae
    func setupBindings(){
        
    }
    
    func validate(){
        
    }
    

    

}

