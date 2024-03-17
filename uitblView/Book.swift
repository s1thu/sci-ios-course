//
//  Book.swift
//  uitblView
//
//  Created by Sithu Win on 17/03/2024.
//

import Foundation
class Book{
   
    var imgUrl:String
    var bookName:String
    var bookPrice:Double
    
    internal init(imgUrl: String, bookName: String, bookPrice: Double) {
        self.imgUrl = imgUrl
        self.bookName = bookName
        self.bookPrice = bookPrice
    }
    
    static func getDummyBooks() -> [Book]{
        return[
            Book.init(imgUrl: "", bookName: "Book1", bookPrice: 290000.0),
            Book.init(imgUrl: "", bookName: "Book2", bookPrice: 290000.0),
            Book.init(imgUrl: "", bookName: "Book3", bookPrice: 290000.0)
        ]
    }
}
