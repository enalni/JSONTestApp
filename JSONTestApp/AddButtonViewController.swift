//
//  AddButtonViewController.swift
//  JSONTestApp
//
//  Created by Александр Николаевич on 25.04.2020.
//  Copyright © 2020 Alexander Nikolaevich. All rights reserved.
//

import UIKit

class AddButtonViewController: UIViewController {
    
    static let shared = AddButtonViewController()
    private var btcPriceAdd: [DataManager] = []
    private let jsonUrl = "https://financialmodelingprep.com/api/v3/quote/BTCUSD"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - FetchData
    
    func fetchBTCprice(from urlString: String, with complition: @escaping ([DataManager]) -> Void) {
        
        guard let url = URL(string: jsonUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            do {
                self.btcPriceAdd = try JSONDecoder().decode([DataManager].self, from: data)
                complition(self.btcPriceAdd)
            } catch let error {
                print(error)
            }
        }.resume()
    }
    
}

