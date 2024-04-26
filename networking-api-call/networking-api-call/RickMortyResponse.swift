//
//  RickMortyCharactersVO.swift
//  networking-api-call
//
//  Created by Sithu Win on 26/04/2024.
//

import Foundation

struct RickMortyResponse:Codable{
    let info:InfoVO
    let results:[CharacterVO]
    
    enum CodingKeys:String,CodingKey{
        case info
        case results
    }
}

struct InfoVO:Codable{
    let count:Int
    let pages:Int
    let next:String
    
    enum CodingKeys:String,CodingKey{
        case count,pages,next
    }
}

struct CharacterVO:Codable{
    let id:Int
    let name:String
    let status:String
    
    enum CodingKeys:String,CodingKey{
        case id,name,status
    }
}
//struct RickMortyResponse:Codable{
//    let info:InfoVO
//    let results:[CharactersVO]
//    
//    enum CodingKeys: String,CodingKey{
//        case info
//        case results
//    }
//}
//
//struct InfoVO:Codable{
//    let count:Int
//    let pages:Int
//    let next:String
//    let prev:String?
//    
//    enum CodingKeys: String,CodingKey{
//        case count
//        case pages
//        case next
//        case prev
//    }
//    
//}
//
//struct CharactersVO:Codable{
//    let id:Int
//    let name:String
//    let status:String
//    let species:String
//    let type:String
//    let gender:String
//    let origin:OriginVO
//    let location:LocationVO
//    let image:String
//    let episode:[String]
//    let url:String
//    let created:String
//    
//    enum CodingKeys: String,CodingKey{
//        case id
//        case name
//        case status
//        case species
//        case type
//        case gender
//        case origin
//        case location
//        case image
//        case episode
//        case url
//        case created
//    }
//}
//
//struct OriginVO:Codable{
//    let name:String
//    let url:String
//    
//    enum CodingKeys: String,CodingKey{
//        case name
//        case url
//    }
//}
//
//struct LocationVO:Codable{
//    let name:String
//    let url:String
//    
//    enum CodingKeys:String,CodingKey{
//        case name
//        case url
//    }
//}
//
//
