//
//  MainTableViewController.swift
//  JSONTestApp
//
//  Created by Александр Николаевич on 25.04.2020.
//  Copyright © 2020 Alexander Nikolaevich. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var btcPriceMain: [DataManager]?
    
    private var btcPriceMainCounnt: [DataManager] = []
    
    private let jsonUrl = "https://financialmodelingprep.com/api/v3/quote/BTCUSD"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddButtonViewController.shared.fetchBTCprice(from: jsonUrl) { (btcPriceAdd) in
            self.btcPriceMain = btcPriceAdd
            print(self.btcPriceMain)
        }
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.btcPriceMainCounnt.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "btc", for: indexPath)
        //self.btcPrice[indexPath.row]
        return cell
    }

}

