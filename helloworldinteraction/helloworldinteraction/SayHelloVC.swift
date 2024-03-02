//
//  SayHelloVC.swift
//  helloworldinteraction
//
//  Created by Sithu Win on 02/03/2024.
//

import UIKit

class SayHelloVC: UIViewController {
    
    //reference type
    //weak is same as garbage collection
    //weak lok htr yin memory pw mhr auto delete pay
    //arc
    @IBOutlet weak var btnSayHello: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnSayHello.backgroundColor = .systemBlue
        btnSayHello.layer.cornerRadius = 10
        btnSayHello.setTitle("Say Hello", for: .normal)
        
        //border nk pathet tk color the objective c yk color ko let khn lo
        //full graphic color
        btnSayHello.layer.borderColor = UIColor.black.cgColor
        btnSayHello.layer.borderWidth = 2

        btnSayHello.addTarget(self, action: #selector(onTapSayHello(sender:)), for: .touchUpInside)
    }
    
    @objc func onTapSayHello(sender: UIButton){
//        print("hello")
//        let alertController = UIAlertController.init(title: "Welcome to my first app", message: "Hello World", preferredStyle: .alert)
//        
//        let okAction = UIAlertAction.init(title: "OK",
//                                          style: .default){action in
//            print("OK pressed")
//        }
//        
//        let cancelAction = UIAlertAction.init(title: "Cancel",
//                                              style: .cancel) { action in
//            print("Cancel Pressed")
//        }
//        
//        alertController.addAction(okAction)
//        alertController.addAction(cancelAction)
//        
//        present(alertController, animated: true)
        showPrompt(title: "Show Prompt Titl", message: "Hello I am show prompt", okBtnTitle: "OK", Okhandler: { action in
            print("Ok")
        }, cancelBtnTitle: "Cancel") { action in
            print("Cancel")
        }
        
        func ok(hello:UIAlertAction) -> Void{
            print("Ok")
        }
    }


}

extension UIViewController{
    //alert, prompt
    //alert => Show message only => 1 btn => ok
    //prompt => User confirmation => 2 btn => ok,cancel
    func showAlert(with title:String,
                   and message:String,
                   okBtnTitle:String,
                   handler:((UIAlertAction)-> Void)?){
        
        let alertController = UIAlertController.init(title: title,
                                                     message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction.init(title: okBtnTitle,
                                          style: .default,handler: handler)
        
       
        
        alertController.addAction(okAction)
      
        
        present(alertController, animated: true)
    }
    
    func showPrompt(title:String, message:String ,okBtnTitle:String,
                    Okhandler:((UIAlertAction)-> Void)?,cancelBtnTitle:String, cancelHandler:((UIAlertAction)-> Void)?){
        
        let promptController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction.init(title: okBtnTitle, style: .default, handler: Okhandler)
        let cancelAction = UIAlertAction.init(title: cancelBtnTitle, style: .destructive, handler: cancelHandler)
        
        promptController.addAction(okAction)
        promptController.addAction(cancelAction)
        
        present(promptController, animated: true)
    }
}
