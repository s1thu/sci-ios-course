//
//  UIVC.swift
//  kayak-clone
//
//  Created by Sithu Win on 27/03/2024.
//

import Foundation
import UIKit

extension UIViewController{
    var rootNC:RootNC?{
        navigationController as? RootNC
    }
    
    var storyboard:UIStoryboard{
        UIStoryboard.init(name: "Main", bundle: nil)
    }
}

