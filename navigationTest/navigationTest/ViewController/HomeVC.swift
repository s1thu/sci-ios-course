//
//  HomeVC.swift
//  navigationTest
//
//  Created by Sithu Win on 23/03/2024.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var btnDetail:UIButton!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder:NSCoder) {
        super.init(coder: coder)
        
        tabBarItem = UITabBarItem.init(title: "Home", image: .init(named: "tabbarhome.off"), selectedImage: .init(named: "tabbarhome.on"))
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupBindings()
    }
    
    func setupBindings(){
        btnDetail.addTarget(self, action: #selector(onTapDetail), for: .touchUpInside)
    }
    
    @objc func onTapDetail(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC
        guard let vc = vc else { return  }
        
        navigationController?.pushViewController(vc, animated: true)
    }


}
