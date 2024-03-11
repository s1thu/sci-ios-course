//
//  HomeVC.swift
//  helloworldinteraction
//
//  Created by Sithu Win on 10/03/2024.
//

import UIKit

class HomeVC: UIViewController {

    var email:String?
    var userName:String?
    var gender:String?
    var dob: String?
    var pwd:String?
    
    var userModel:UserModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupBindings()
        print(userModel!)
        
    }
    
    func setupViews(){
        
    }
    
    func setupBindings(){
        
    }

}
