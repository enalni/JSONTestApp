//
//  DataManager.swift
//  JSONTestApp
//
//  Created by Александр Николаевич on 25.04.2020.
//  Copyright © 2020 Alexander Nikolaevich. All rights reserved.
//

import Foundation

struct DataManager: Codable {
    let symbol, name: String
    let price, changesPercentage, change, dayLow: Double
    let dayHigh, yearHigh, yearLow: Double
}

struct btcStruct: Codable {
    let btcPriceFromDataManager: [DataManager]
}
