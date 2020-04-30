//
//  MainTableViewController.swift
//  JSONTestApp
//
//  Created by Александр Николаевич on 25.04.2020.
//  Copyright © 2020 Alexander Nikolaevich. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    private var btcPriceMainCounnt: [AddButtonViewController] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        btcPriceMainCounnt.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "btc", for: indexPath)
        //self.btcPrice[indexPath.row]
        return cell
    }

}

