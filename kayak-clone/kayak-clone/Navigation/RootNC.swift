//
//  RootNC.swift
//  kayak-clone
//
//  Created by Sithu Win on 27/03/2024.
//

import UIKit

class RootNC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.navigateToSignIn()
        }
    }
    
    func navigateToSignIn(){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "SigninVC") as? SigninVC
        guard let vc = vc else { return  }
//        setNavigationBarHidden(true, animated: false)
        pushViewController(vc, animated: true)
    }
    

}
