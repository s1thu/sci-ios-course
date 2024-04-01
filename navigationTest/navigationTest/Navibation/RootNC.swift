//
//  RootNC.swift
//  navigationTest
//
//  Created by Sithu Win on 23/03/2024.
//

import UIKit

class RootNC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            //self.navigateToLogin()
            self.navigateToHome()
        }
    }
    
    func navigateToLogin(){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "LoginVC") as? LoginVC
        guard let vc = vc else { return }
        
        pushViewController(vc, animated: true)
    }
    
    func navigateToHome(){
        let tabbar = TabbarVC.init()
        pushViewController(tabbar, animated: true)
    }
    

}
