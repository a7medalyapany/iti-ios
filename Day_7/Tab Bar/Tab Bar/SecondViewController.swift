//
//  SecondViewController.swift
//  Tab Bar
//
//  Created by khaledsobh on 31/07/2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    var dataReceived: String?
    
    @IBOutlet weak var receivedDataLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let data = dataReceived{
            receivedDataLbl.text = data
        }
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
