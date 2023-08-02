//
//  addUserVC.swift
//  Table View
//
//  Created by khaledsobh on 29/07/2023.
//

import UIKit

class addUserVC: UIViewController {
    
    var addUserDelegate: AddUser?

    @IBOutlet weak var nameF: UITextField!
    
    @IBOutlet weak var emailF: UITextField!
    
    @IBOutlet weak var phoneF: UITextField!
    
    @IBOutlet weak var ageF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 
    @IBAction func addBtn(_ sender: UIButton) {
        var newUser = User(name: nameF.text!, email: emailF.text!, phone: phoneF.text!, age: ageF.text!)
        addUserDelegate?.addUser(user: newUser)
        navigationController?.popViewController(animated: true)
    }
    
}
