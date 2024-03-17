//
//  MainVC.swift
//  uitblView
//
//  Created by Sithu Win on 17/03/2024.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tbView:UITableView!
    
    let books:[Book] = Book.getDummyBooks()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Step 1 Register Cell to tblView
        // It is like register your ID.
        tbView.register(UINib(nibName: "BookCell", bundle: nil), forCellReuseIdentifier: "BookCell")
        
        // Step 2 Link Data source
        tbView.dataSource = self
        
        // Step 3 Link Delegate
        // Delegate is event
        tbView.delegate = self
        
        tbView.separatorStyle = .none
    }

}

// Step 4 Implement DataSource and Delegate Protocol
extension MainVC: UITableViewDataSource{
    
    // ** this two methods are necessary to develop UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for:   indexPath) as? BookCell
        guard let cell = cell else { return UITableViewCell() }
        
        let data = books[indexPath.row]
//        let Book = Book(imgUrl: "", bookName: data.bookName, bookPrice: data.bookPrice)
        cell.bindData(data: data)
        
//       using didSet
//        cell.data = data
        
        return cell
    }
    
}

extension MainVC : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
