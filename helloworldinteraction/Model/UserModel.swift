//
//  UserModel.swift
//  helloworldinteraction
//
//  Created by Sithu Win on 10/03/2024.
//

import Foundation

class UserModel:CustomStringConvertible{
    
    
    var email:String?
    var userName:String?
    var gender:String?
    var dob:String?
    var pwd:String?
    
    init(email: String? = nil, userName: String? = nil, gender: String? = nil, dob: String? = nil, pwd: String? = nil) {
        self.email = email
        self.userName = userName
        self.gender = gender
        self.dob = dob
        self.pwd = pwd
    }
    
    var description: String{
        return "\(self.email!) "
    }
}
