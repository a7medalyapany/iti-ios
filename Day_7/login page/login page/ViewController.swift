//
//  ViewController.swift
//  login page
//
//  Created by khaledsobh on 26/07/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameF: UITextField!
    
    @IBOutlet weak var passF: UITextField!
    
    @IBOutlet weak var registerBtn: UIButton!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passF.isSecureTextEntry = true
        
        loginBtn.layer.cornerRadius = 10
        registerBtn.layer.cornerRadius = 10
        
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        handleRegistration()
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        handleLogin()
    }
    
    func handleRegistration(){
        guard let username = nameF.text, !username.isEmpty, let password = passF.text, !password.isEmpty else {
            showAlert(title: "Error", message: "Username and Password are required.")
            return
        }
        
        var users: [[String: String]] = UserDefaults.standard.array(forKey: "users") as? [[String: String]] ?? []
        
        for user in users {
            if user["username"] == username{
                showAlert(title: "Error", message: "Username already exists. Please choose a different one.")
                return
            }
        }
        
        let newUser: [String: String] = ["username": username, "password": password]
        users.append(newUser)
        UserDefaults.standard.set(users, forKey: "users")
        
        nameF.text = ""
        passF.text = ""
        
        showAlert(title: "Done", message: "Registration successful.")
    }
    
    func handleLogin(){
        guard let username = nameF.text, !username.isEmpty,
              let password = passF.text, !password.isEmpty else{
            showAlert(title: "Error", message: "Username and Password are required.")
            return
        }
        
        guard let users = UserDefaults.standard.array(forKey: "users") as? [[String: String]] else{
            showAlert(title: "Error", message: "No user data found. Please register first." )
            return
        }
        
        for user in users{
            if user["username"] == username && user["password"] == password{
                showAlert(title: "User Logged In", message: "Login successful." )
                nameF.text = ""
                passF.text = ""
                return
            }
        }
        
        showAlert(title: "Error", message: "Incorrect Username or Password" )
    }
    
    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
   
}

