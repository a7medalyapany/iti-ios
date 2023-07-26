//
//  ViewController.swift
//  Tabel View
//
//  Created by khaledsobh on 25/07/2023.
//

import UIKit


class ViewController: UITableViewController {

    @IBOutlet weak var table: UITableView!

    
    var user : [User] = [User(name: "ahmed", email: "ahmed@gmail.com", age: "21", phone: "012xxxx"),User(name: "zahraa", email: "zahraa@gmail.com", age: "15", phone: "010xxxx")]
    
    var normalUser : [String] = ["ahmed" , "zahraa"]
    var vipUser : [String] = ["alyapany", "sara"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return normalUser.count
        case 1:
            return vipUser.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100;
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "User"
        case 1:
            return "VIP"
        default:
            return ""
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section{
        case 0:
            print("\(normalUser[indexPath.row]) selected")
        case 1:
            print("\(vipUser[indexPath.row]) selected")
        default:
            print("")
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: <#T##IndexPath#>)
        
        switch indexPath.section{
        case 0:
            cell.textLabel?.text = normalUser[indexPath.row]//user name
        case 1:
             cell.textLabel?.text = vipUser[indexPath.row]//user name
        default:
            cell.textLabel?.text = ""
        }
        
        cell.detailTextLabel?.text = "New User" //user email
        cell.imageView?.image = UIImage(named: "photo")//set a photo
        cell.accessoryType = .detailDisclosureButton
        
        return cell;
    }
    
    //button for the adding someone


}

extension ViewController : AddUser{
    func addUser(name: String) {
        normalUser.append(name)
        table.reloadData()
    }
}

