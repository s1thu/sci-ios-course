//
//  ViewController.swift
//  networking-api-call
//
//  Created by Sithu Win on 25/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var characters:[CharacterVO] = []{
        didSet
        {
            for item in characters{
                print("\(item.id) \(item.name)")
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        fetchDataFromJsonFile()
        fetchDataFromURL()
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
    
    func fetchDataFromURL(){
        //Step 1 Get URL
        let url:URL? = URL(string: "https://rickandmortyapi.com/api/character")
        
        //Step 2 Request => HTTP method
        guard let url = url else { return  }
        var request = URLRequest.init(url: url)
        
        //Step 3 URL Request => HTTPmethod
        request.httpMethod = "GET"
        
        //Step 4 Set Content Type
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        //Initialize URLSession
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error{
                print(error.localizedDescription)
            }else{
                
//                //Step 6 HTTP Status Code Check
//                if let statuscode = (response as? HTTPURLResponse)?.statusCode{
//                    //Step 7 Status code is between 200 < 300 ?
//                    if(200..<300) ~= statuscode{
//                        
//                    }
//                }
                
                //Step 7 Decode
                if let data = data{
                    do{
                        
                        let data:RickMortyResponse = try JSONDecoder().decode(RickMortyResponse.self, from: data)
                        
                        DispatchQueue.main.async {
                            self.characters = data.results
                        }
                        
                    }catch{
                        print(error.localizedDescription)
                    }
                }
            }
        }.resume()
    }

}

