//
//  ViewController.swift
//  Hello World
//
//  Created by khaledsobh on 22/07/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var msgbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbl.text = ""
    }


    @IBAction func btn(_ sender: Any) {
        if lbl.text == ""{
            lbl.text = "Hello World"
        }
        else{
            lbl.text = ""
        }
        updateButtonText()
    }
    
    func updateButtonText(){
        let buttonText = (lbl.text == "") ? "Show msg" : "Hide msg";
        msgbtn.setTitle(buttonText, for: .normal)
    }
}

