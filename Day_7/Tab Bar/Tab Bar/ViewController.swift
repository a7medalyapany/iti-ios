//
//  ViewController.swift
//  Tab Bar
//
//  Created by khaledsobh on 31/07/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sendBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "segueToSecond", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToSecond",
           let destinationVC = segue.destination as? SecondViewController,
           let text = textF.text{
            destinationVC.dataReceived = text
        }
    }
}

