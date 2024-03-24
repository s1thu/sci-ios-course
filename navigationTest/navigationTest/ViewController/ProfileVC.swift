//
//  ProfileVC.swift
//  navigationTest
//
//  Created by Sithu Win on 23/03/2024.
//

import UIKit

class ProfileVC: UIViewController {
    
    @IBOutlet weak var btnLogout:UIButton!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder:NSCoder) {
        super.init(coder: coder)
        
        tabBarItem = UITabBarItem.init(title: "Profile", image: .init(named: "profilehome.off"), selectedImage: .init(named: "profilehome.off"))
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpBindings()
    }
    
    func setUpBindings(){
        btnLogout.addTarget(self, action: #selector(onTapLogout), for: .touchUpInside)
    }

    @objc func onTapLogout(){
        rootNC?.navigateToLogin()
    }
}

extension UIViewController{
    var rootNC:RootNC?{
        navigationController as? RootNC
    }
}
