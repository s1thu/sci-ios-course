//
//  MainVC.swift
//  uitblView
//
//  Created by Sithu Win on 17/03/2024.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tbView:UITableView!
    
//    let books:[Book] = Book.getDummyBooks()
    
    let datasource = BookStoreDataSource.shared
    
    var books:[Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Step 1 Register Cell to tblView
        // It is like register your ID.
        tbView.register(UINib(nibName: "BookCell", bundle: nil), forCellReuseIdentifier: "BookCell")
        
        tbView.register(UINib(nibName: "RecommendedCell", bundle: nil), forCellReuseIdentifier: "RecommendedCell")
        
        // Step 2 Link Data source
        tbView.dataSource = self
        
        // Step 3 Link Delegate
        // Delegate is event
        tbView.delegate = self
        
        tbView.separatorStyle = .none
        
        books = datasource.getAll()
    }

}

// Step 4 Implement DataSource and Delegate Protocol
extension MainVC: UITableViewDataSource{
    
    // ** this two methods are necessary to develop UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let data = books[indexPath.row]
        
        if data.isRecommendedBook == true{
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecommendedCell", for:   indexPath) as? RecommendedCell
            guard let cell = cell else { return UITableViewCell() }
//            cell.bindData(data: data)
            return cell
        }else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for:   indexPath) as? BookCell
            guard let cell = cell else { return UITableViewCell() }
            cell.delegate = self
            cell.bindData(data: data)
            
            return cell
        }
        
        
        
//        let Book = Book(imgUrl: "", bookName: data.bookName, bookPrice: data.bookPrice)
//        cell.bindData(data: data)
        
//       using didSet
//        cell.data = data
        
//        return cell
    }
    
}

extension MainVC : UITableViewDelegate{
    // onlick on each cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//        let book = books[indexPath.row]
//        print(book)
        
        let book = books[indexPath.row]
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC
        guard let vc = vc else{return}
        
        vc.data = book
        print(book)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
        
    }
}

extension MainVC: BookCellDelegate{
    func onTapBookmakr(data: Book) {
        books.first{$0.id == data.id}?.isBookmark.toggle()
        
        tbView.reloadData()
    }

}
