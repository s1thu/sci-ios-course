//
//  BookListVM.swift
//  uitblView
//
//  Created by Sithu Win on 31/03/2024.
//

import Foundation

protocol BookListViewDelegate{
    func onGetBooks()
}

class BookListVM{
    
    let repository = BookRepository()
    
    private (set) var books:[Book] = []{
        didSet{
            delegate.onGetBooks()
        }
    }
    
    private let delegate : BookListViewDelegate
    
    init(delegate: BookListViewDelegate){
        self.delegate = delegate
    }
    
    func fetchBooks(){
        books = repository.getBookList()
    }
    
    func addOrRemoveBookMark(bookId:Int){
        repository.toogleBookMark(bookId: bookId)
        fetchBooks()
    }
    
    
}
