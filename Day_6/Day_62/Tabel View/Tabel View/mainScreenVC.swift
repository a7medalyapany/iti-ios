//
//  mainScreenVC.swift
//  Tabel View
//
//  Created by khaledsobh on 25/07/2023.
//

import UIKit

class mainScreenVC: UITableViewController {

    var users : [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let user1 = User(name: "ahmed", email: "ahmed@gmail.com", phone: "012xxx", age: "21")
        
        let user2 = User(name: "alyapany", email: "alyapany@gmail.com", phone: "015xxx", age: "21")
        users = [user1, user2]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //code of transetion to detailed data
        print("\(users[indexPath.row]) selected")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: <#T##IndexPath#>)
        
        let user = users[indexPath.row]
        
        cell.textLabel?.text = user.name
        cell.detailTextLabel?.text = user.email
        
        return cell
    }
    
    
    @IBAction func addButtonAction(_ sender: Any) {
        let addUserVC : addUserVC = storyboard?.instantiateViewController(withIdentifier: "addUserVC") as! addUserVC
        addUserVC.addUserDelegate = self
        navigationController?.pushViewController(addUserVC, animated: true)
    }
/*
    @IBAction func addTapped(_ sender: Any) {
        performSegue(withIdentifier: "toUserDataEntery", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toUserDataEntery"{
            if segue.identifier == "toUserDetails",
               let userDetailsVC = segue.destination as? UserDetailsVC,
               let selectUser = sender as? User{
                userDetailsVC.user = selectUser
            }
        }
    }*/
}

extension mainScreenVC : UserDataEnteryDelegate{
    func didAddUser(_ user: User) {
        users.append(user)
        tableView.reloadData()
    }
    
}
