//
//  SigninemailVC.swift
//  kayak-clone
//
//  Created by Sithu Win on 27/03/2024.
//

import UIKit

class SigninemailVC: UIViewController {
    
    @IBOutlet weak var tfEmail:UITextField!
    @IBOutlet weak var btnContinue:UIButton!
    @IBOutlet weak var btnBack:UIButton!
    
    private var enableBtn:Bool = false {
        didSet{
            btnContinue.isEnabled = enableBtn
            btnContinue.backgroundColor = enableBtn ? UIColor(named: "background.Color") : UIColor.gray
            
            if enableBtn == false{
                btnContinue.setTitleColor(UIColor.white, for: .disabled)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupBindings()
    }

    func setupViews(){
        enableBtn = false
    }

    func setupBindings(){
        tfEmail.addTarget(self, action: #selector(onValidate), for: .editingChanged)
        btnContinue.addTarget(self, action: #selector(navigateToNextPage), for: .touchUpInside)
        btnBack.addTarget(self, action: #selector(backToSignInVc), for: .touchUpInside)
    }
   
    @objc func onValidate(){
        enableBtn = tfEmail.text.isValid ? true : false
    }
    
    @objc func navigateToNextPage(){
        //let storyboard = UIStoryboard.init(name: "", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CreateAccVC") as? CreateAccVC
        guard let vc = vc else { return  }
//        rootNC?.setNavigationBarHidden(true, animated: false)
        rootNC?.pushViewController(vc, animated: true)
    }
    
    @objc func backToSignInVc(){
        rootNC?.popViewController(animated: true)
    }

}
