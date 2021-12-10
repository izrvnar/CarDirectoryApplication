//
//  CarInformation.swift
//  IvanZrvnarFinalTest
//
//  Created by Ivan Zrvnar on 2021-12-10.
//

import Foundation


// adding a struct to be able to parse the json
struct CarInformation: Codable{
    let ownerName: String
    let ownerAddress: String
    let ownerPhone: String
    let make: String
    let model: String
    let manufactureYear: Int
    let vin: String
}
