//
//  ViewController.swift
//  Copying Text
//
//  Created by khaledsobh on 23/07/2023.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var textlbl: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textlbl.isHidden = true
        
        let newHeight: CGFloat = 60.0
        textField.frame.size.height = newHeight
        
        let placeholderColor = UIColor.white
        textField.attributedPlaceholder = NSAttributedString(string: "Enter text here", attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])
    }
    
    
    @IBAction func showcopiedtext(_ sender: Any) {
        if let output = textField.text , !output.isEmpty{
            textlbl.text = output
            textlbl.isHidden = false
            textField.text = ""
        }
            
    }
    

}

