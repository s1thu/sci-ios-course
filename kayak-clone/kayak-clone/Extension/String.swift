//
//  String.swift
//  kayak-clone
//
//  Created by Sithu Win on 28/03/2024.
//

import Foundation
import RegexBuilder

extension Optional where Wrapped == String{
    var isValid:Bool{
        //Regular Expression
        guard let email = self, !email.isEmpty, email.wholeMatch(of: emailRegex) != nil else { return false }
        
        return true
    
    }
}
