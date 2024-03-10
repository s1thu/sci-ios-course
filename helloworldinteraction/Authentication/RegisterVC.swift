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
    @IBOutlet weak var btnCheck:UIButton!
    @IBOutlet weak var imgCheck:UIImageView!
    
    private let genderArray = ["Male","Female","Unspecified"]
    
    private var isTermschecked:Bool = false{
        didSet{
            imgCheck.image = UIImage.init(named: isTermschecked ? "icon.checkbox.selected" : "icon.checkbox.unselected")
        }
    }
    
    private var isRegistered:Bool = false{
        didSet{
            btnRegister.isEnabled = isRegistered
            btnRegister.backgroundColor = isRegistered ? UIColor.systemIndigo : .lightGray
        }
    }
    
     lazy var datePicker:UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
         datePicker.minimumDate = Calendar.current.date(byAdding: .year, value: -100, to: Date(),wrappingComponents: true)
         datePicker.maximumDate = Date()
         
         if #available(iOS 13.4, *) {
             datePicker.preferredDatePickerStyle = .wheels
     }
         
        return datePicker
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupBindings()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tfEmail.becomeFirstResponder()
    }
    
    private func setupViews()    {
        
        isRegistered = false
        isTermschecked = false
        
        //chg forecolro of segmented control
        segGender.setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
        
        tfDOB.inputView = datePicker
        tfDOB.delegate = self
        
        
    }
    
    private func setupBindings(){
        btnDismiss.addTarget(self, action: #selector(onTapClose), for: .touchUpInside)
        
        btnCheck.addTarget(self, action: #selector(onCheckedChanged), for: .touchUpInside)
        
        [tfEmail,tfUser,tfDOB,tfPwd,tfConPwd].addTarget(action: #selector(validateInput))
        
        segGender.addTarget(self, action: #selector(validateInput), for: .valueChanged)
        
        datePicker.addTarget(self, action: #selector(onDateChanged), for: .valueChanged)
    }
    
    @objc func onDateChanged(){
        print(datePicker.date)
        
        //dd mm yyyy
        let date = datePicker.date
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        formatter.timeZone = .current
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.string(from: date)
        
        let dateString = formatter.string(from: date)
        
        tfDOB.text = dateString
        validateInput()
        
    }
    
    @objc func onTapClose(){
        dismiss(animated: true)
    }
    
    @objc func onCheckedChanged(){
        isTermschecked.toggle()
        validateInput()
    }
    
    @objc func validateInput(){
        
        print(genderArray[segGender.selectedSegmentIndex])
        
        if let email = tfEmail.text, let username = tfUser.text,
           let dob = tfDOB.text, let pwd = tfPwd.text,
           let conpwd = tfConPwd.text,
           !email.isEmpty && !username.isEmpty && !dob.isEmpty && !pwd.isEmpty && !conpwd.isEmpty
            && isTermschecked && pwd == conpwd {
            isRegistered = true
        }else{
            isRegistered = false
        }
        
        
    }
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        if textField == tfDOB{
//            return false
//        }
//        return true
//    }
    

}

//Best practice
//Protocol taku implement lok tok ml so yin extension nk lok
extension RegisterVC: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == tfDOB{
            return false
        }
        return true
    }
}

extension Date {
    func toString(with format:String = "dd/MM/yyyy") -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = .current
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter.string(from: self)
    }
}
