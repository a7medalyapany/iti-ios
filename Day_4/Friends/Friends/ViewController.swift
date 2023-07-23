//
//  ViewController.swift
//  Friends
//
//  Created by khaledsobh on 23/07/2023.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var friendname: UILabel!
    
    var friends = ["Alyapany", "Khaled", "Joo", "Nancy", "Sara", "Magdy"];
    
    var i = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        friendname.text = friends[i]
        
    }


    @IBAction func getNext(_ sender: Any) {
        i = (i + 1) % friends.count
        updateFriendName()
    }
    
    @IBAction func getPrev(_ sender: Any) {
        i = (i - 1 + friends.count) % friends.count;
        updateFriendName()
    }
    
    func updateFriendName(){
        friendname.text = friends[i]
    }
}

