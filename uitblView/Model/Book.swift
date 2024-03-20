//
//  Book.swift
//  uitblView
//
//  Created by Sithu Win on 17/03/2024.
//

import Foundation

struct Book{
   
    var imgUrl:String
    var bookName:String
    var author:String
    var rating:Double
    var bookPrice:Double
    
    internal init(imgUrl: String, bookName: String, author: String, rating: Double, bookPrice: Double) {
        self.imgUrl = imgUrl
        self.bookName = bookName
        self.author = author
        self.rating = rating
        self.bookPrice = bookPrice
    }
   
    
    static func getDummyBooks() -> [Book]{
        return[
            Book.init(imgUrl: "", bookName: "Sithu", author: "Sithu", rating: 3.0, bookPrice: 290000),
            Book.init(imgUrl: "", bookName: "Sithu", author: "Sithu", rating: 4.0, bookPrice: 290000),
            Book.init(imgUrl: "", bookName: "Sithu", author: "Sithu", rating: 4.0, bookPrice: 290000)
        ]
    }
}
