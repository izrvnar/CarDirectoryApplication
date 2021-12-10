//
//  TableViewController.swift
//  IvanZrvnarFinalTest
//
//  Created by Ivan Zrvnar on 2021-12-10.
//

import UIKit
// MARK: VIEW DID LOAD
class TableViewController: UITableViewController {
    // empty array of car information
    var carInformation = [CarInformation]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // adding URL String
        let urlString = "https://dtakaki.scweb.ca/mad310/version2Data.json"
        if let url = URL(string: urlString){
            if let data = try? Data(contentsOf: url){
                // add parse information here
                parse(json: data)
                return
                
        }
        }
        showError()
    
        


    }

    // MARK: Methods

    // deciding the number of rows in the table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return carInformation.count
    }

    // filling the cells with the needed information, owner name and vin
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let carCellInformation = carInformation[indexPath.row]
        cell.textLabel?.text = carCellInformation.ownerName
        cell.detailTextLabel?.text = carCellInformation.vin

         

        return cell
    }
    
    // json parse method
    func parse(json: Data){
        let decoder = JSONDecoder()
        if let carInformations = try? decoder.decode(CarInformationResults.self, from: json){
            carInformation = carInformations.results
            tableView.reloadData()
        }
    }
    
    // show error method
    func showError(){
        let ac = UIAlertController(title: "Loading Error", message: "There was a problem loading your feed", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
}
