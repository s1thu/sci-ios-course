//
//  PostVO.swift
//  networking-api-call
//
//  Created by Sithu Win on 26/04/2024.
//

import Foundation
import Foundation

struct PostVO:Codable{
    let userId:Int
    let postId:Int
    let title:String?
    let body:String?
    
    enum CodingKeys: String,CodingKey{
        case userId,title,body
        case postId = "id"
    }
    
}
