//
//  BookStoreDataSource.swift
//  uitblView
//
//  Created by Sithu Win on 30/03/2024.
//

import Foundation

class BookStoreDataSource{
    
    private var bookList:[Book] = Book.getDummyBooks()
    
    //Step 1. Private Constructor
    private init(){
        
    }
    
    //Step 2. Create Static Shared Vairable
    static let shared = BookStoreDataSource.init()
    
    func getAll() -> [Book]{
        return bookList
    }
    
    func toogleBookMarkStatus(bookId: Int){
        bookList.first{$0.id == bookId }?.isBookmark.toggle()
    }
    
    func getBookById(bookId: Int) -> Book?{
        bookList.first{$0.id == bookId}
    }
}
