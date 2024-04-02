//
//  ViewController.swift
//  delegateprotocolpattern
//
//  Created by Sithu Win on 02/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tbView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Step 1. Register Cell to TableView
        tbView.register(UINib(nibName: "OneCell", bundle: nil), forCellReuseIdentifier: "OneCell")
        
        //Setp 2. Link DataSource for Data
        tbView.dataSource = self
        
        //Step 3. Link Delegate for Event
//        tbView.delegate = self
        
        tbView.separatorStyle = .none
    }

    

}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbView.dequeueReusableCell(withIdentifier: "OneCell", for: indexPath) as? OneCell
        guard let cell = cell else { return UITableViewCell() }
        cell.delegate = self
        return cell
    }
}

extension ViewController:OnecellDelegate{
    func onTapSendDataToParent(sendData: Int) {
        print("Get Data from MainViewcontroller : \(sendData)")
    }
}

