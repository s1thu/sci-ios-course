//
//  BookRepository.swift
//  uitblView
//
//  Created by Sithu Win on 30/03/2024.
//

import Foundation

class BookRepository{
    let datasource : BookStoreDataSource = BookStoreDataSource.shared
    
    func getBookList() -> [Book]{
        datasource.getAll()
    }
    
    func toogleBookMark(bookId:Int){
        datasource.toogleBookMarkStatus(bookId: bookId)
    }
    
    func getBookById(bookId:Int) -> Book?{
        datasource.getBookById(bookId: bookId)
    }
}
