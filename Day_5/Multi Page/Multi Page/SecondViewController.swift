//
//  SecondViewController.swift
//  Multi Page
//
//  Created by khaledsobh on 23/07/2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    var data : Data?

    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var phoneLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    override func viewWillAppear(_ animated: Bool) {
        
        nameLbl.text = data?.name
        emailLbl.text = data?.email
        phoneLbl.text = data?.phone
        
    }
    
   /* @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        if let navigationController = self.navigationController {
            let firstVC : ViewController = self.storyboard?.instantiateViewController(identifier: "firstVC") as! ViewController
            navigationController.popToViewController(firstVC, animated: true)
        }
    }*/

}
