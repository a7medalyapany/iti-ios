//
//  ViewController.swift
//  Multi Page
//
//  Created by khaledsobh on 23/07/2023.
//

import UIKit

class ViewController: UIViewController {

    var scndVC : SecondViewController!
    
    @IBOutlet weak var nameF: UITextField!
    
    @IBOutlet weak var emailF: UITextField!
    
    @IBOutlet weak var phoneF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scndVC = self.storyboard?.instantiateViewController(identifier: "scndVC") as? SecondViewController
    }

    @IBAction func send(_ sender: Any) {
        
        var nameStr = nameF.text
        var email = emailF.text
        var phone = phoneF.text
        
        let data : Data  = Data(name: nameStr,email: email,phone: phone)
        scndVC.data = data
        
        self.navigationController?.pushViewController(scndVC, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

