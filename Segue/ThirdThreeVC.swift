//
//  ThirdThreeVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 14.02.2021.
//

import UIKit

class ThirdThreeVC: UIViewController {

    var myThirdClosure: ((String) -> (String))?
    var text: String!
    
    @IBOutlet weak var textFieldForClosure: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = text
    }
    @IBAction func textFieldThirdClosure() {
        if let myThirdClosure = myThirdClosure {
            let upperCased = myThirdClosure(textFieldForClosure.text!)
            textLabel.text = String(upperCased)
            
        }
    }
}
