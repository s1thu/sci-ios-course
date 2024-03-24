//
//  Book.swift
//  uitblView
//
//  Created by Sithu Win on 17/03/2024.
//

import Foundation

class Book{
   
    let id:Int
    let imgUrl:String
    let bookName:String
    let author:String
    let rating:Double
    let bookPrice:Double
    let isRecommendedBook:Bool
    
    // user can kali
    var isBookmark:Bool = false
    
    internal init(id:Int,imgUrl: String, bookName: String, author: String, rating: Double, bookPrice: Double,isRecommendedBook:Bool = false) {
        self.imgUrl = imgUrl
        self.bookName = bookName
        self.author = author
        self.rating = rating
        self.bookPrice = bookPrice
        self.isRecommendedBook = isRecommendedBook
        self.id = id
        
    }
   
    
    static func getDummyBooks() -> [Book]{
        return[
            Book.init(id: 1, imgUrl: "", bookName: "Sithu", author: "Sithu", rating: 3.0, bookPrice: 290000,isRecommendedBook: true),
            Book.init(id: 2, imgUrl: "", bookName: "Sithu", author: "Sithu", rating: 4.0, bookPrice: 290000),
            Book.init(id: 3, imgUrl: "", bookName: "Sithu", author: "Sithu", rating: 4.0, bookPrice: 290000)
        ]
    }
}
