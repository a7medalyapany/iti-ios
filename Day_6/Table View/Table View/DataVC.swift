//
//  DataVC.swift
//  Table View
//
//  Created by khaledsobh on 29/07/2023.
//

import UIKit

class DataVC: UIViewController {
    
    var data: User?

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameLbl.text = data?.name
        emailLbl.text = data?.email
        phoneLbl.text = data?.phone
        ageLbl.text = data?.age
    }
    

}
