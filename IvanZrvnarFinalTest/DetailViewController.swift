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
    @IBOutlet weak var yearLabbel: UILabel!
    @IBOutlet weak var makeLabel: UILabel!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var colourLabel: UILabel!
    @IBOutlet weak var vinLabel: UILabel!
    
    


// MARK: View Method
    override func viewDidLoad() {
        super.viewDidLoad()

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
