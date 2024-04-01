//
//  BookDetailVM.swift
//  uitblView
//
//  Created by Sithu Win on 31/03/2024.
//

import Foundation

protocol BookDetailDelegate{
    func onGetBookDetail()
}

class BookDetailVM{
    
    private let repository : BookRepository = .init()
    
    private let delegate: BookDetailDelegate
    
    init(delegate:BookDetailDelegate){
        self.delegate = delegate
    }
    
    private var book:Book? = nil{
        didSet{
            if let book = book{
                delegate.onGetBookDetail()
            }
        }
    }
    
    func fetchByBookId(bookId : Int){
        book = repository.getBookById(bookId: bookId)
    }
    
    func addOrRemoveBookMark(bookId:Int){
        guard let book = book else { return  }
        repository.toogleBookMark(bookId: book.id)
        fetchByBookId(bookId: book.id)
        
    }
}
