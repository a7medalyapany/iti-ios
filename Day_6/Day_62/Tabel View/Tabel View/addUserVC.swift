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
        addUserDelegate?.didAddUser(user.name: )
        navigationController?.popViewController(animated: true)
    }
}

