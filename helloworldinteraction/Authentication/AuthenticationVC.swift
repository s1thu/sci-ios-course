//
//  AuthenticationVC.swift
//  helloworldinteraction
//
//  Created by Sithu Win on 03/03/2024.
//

import UIKit

class AuthenticationVC: UIViewController {
    
    @IBOutlet weak var btnCreateAccount: UIButton!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    //Reactive variable ( Reactive Programming
    //property observere
    var isRegisteredBtnenabled: Bool = false{
        //Call back
        didSet{
            btnLogin.isEnabled = isRegisteredBtnenabled
            btnLogin.backgroundColor = isRegisteredBtnenabled ? UIColor.systemIndigo : UIColor.systemGray
        }
    }
    
    
    // Design swl yin swl ma swl yin event htae
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupBinding()
    }

    
    //Default Internal
    //Package taku htl shi nay tk atwt bal ka khw khw ya nay ml
    //that's why add privat
    private func setupViews(){
        
        isRegisteredBtnenabled = false
    }
    
    private func setupBinding()  {
        btnLogin.addTarget(self,
                           action: #selector(onTapLogin),
                           for: .touchUpInside)
        
        btnCreateAccount.addTarget(self,
                           action: #selector(onTapCreateAcc),
                           for: .touchUpInside)
        
        [tfEmail,tfPassword].addTarget(action: #selector(onValidate))
    }
    
    @objc func onTapLogin(){
        
    }

    @objc func onTapCreateAcc(){
        let storyboard = UIStoryboard.init(name: "Authentication", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RegisterVC") as? RegisterVC
        guard let vc = vc else{return}
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @objc func onValidate(){
        guard let email = tfEmail.text,
        let password = tfPassword.text,
        !email.isEmpty && !password.isEmpty else { 
            isRegisteredBtnenabled = false
            return }
        
        isRegisteredBtnenabled = true

    }
}

extension Array where Element == UITextField {
    func addTarget(action: Selector) {
        self.compactMap{$0}.forEach{$0.addTarget(self, action: action, for: .editingChanged)}
    }
}
