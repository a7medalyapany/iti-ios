//
//  addUserVC.swift
//  Tabel View
//
//  Created by khaledsobh on 25/07/2023.
//

import UIKit

protocol UserDataEnteryDelegate : AnyObject{
    func didAddUser(_ user: User)
}

class addUserVC: UIViewController {

    @IBOutlet weak var nameF: UITextField!
    
    @IBOutlet weak var emailF: UITextField!
    
    @IBOutlet weak var phoneF: UITextField!
    
    @IBOutlet weak var ageF: UITextField!
    
    var addUserDelegate : UserDataEnteryDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameF.text, let email = emailF.text, let phone = phoneF.text, let age = ageF.text else{
            return
        }
        let newUser = User(name: name, email: email, phone: phone, age: age)
        addUserDelegate?.didAddUser(newUser)
        navigationController?.popViewController(animated: true)
    }
}

