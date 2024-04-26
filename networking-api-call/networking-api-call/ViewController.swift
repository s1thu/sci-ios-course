//
//  ViewController.swift
//  networking-api-call
//
//  Created by Sithu Win on 25/04/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchDataFromJsonFile()
    }

    func fetchDataFromJsonFile(){
        let url = Bundle.main.url(forResource: "rick-morty-characters", withExtension: "json")
        
        if let url = url{
            do{
                // Step 1 File content -> Data Type
                let data:Data = try Data(contentsOf: url)
                
                // Step 2 JSON DECODE/ENCODE
                
                let jsonData: RickMortyResponse = try JSONDecoder().decode(RickMortyResponse.self, from: data)
                
//                let jsonData: [PostVO]  = try JSONDecoder().decode([PostVO].self, from: data)
                
                print(jsonData)
            }catch{
                print(error.localizedDescription)
            }
        }
    }

}

