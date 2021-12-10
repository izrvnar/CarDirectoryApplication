//
//  DetailViewController.swift
//  IvanZrvnarFinalTest
//
//  Created by Ivan Zrvnar on 2021-12-10.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MARK: Properties
    
    // Driver Information
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    // car information
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var makeLabel: UILabel!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var colourLabel: UILabel!
    @IBOutlet weak var vinLabel: UILabel!
    
    

    var carDetail: CarInformation?
// MARK: View Method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // assigning labels to the selected car owner from table view 
        if let passedCarDetail = carDetail{
            nameLabel.text = passedCarDetail.ownerName
            addressLabel.text = passedCarDetail.ownerAddress
            phoneNumberLabel.text = passedCarDetail.ownerPhone
            yearLabel.text = "\(passedCarDetail.manufactureYear)"
            makeLabel.text = passedCarDetail.model
            brandLabel.text = passedCarDetail.make
            colourLabel.text = passedCarDetail.colour
            vinLabel.text = passedCarDetail.vin
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
