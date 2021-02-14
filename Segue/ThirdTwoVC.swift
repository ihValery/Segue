//
//  ThirdTwoVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 14.02.2021.
//

import UIKit

class ThirdTwoVC: UIViewController {

    var myClosure: ((String) -> (String))?
    var mySecondClosure: ((String) -> (Int))?
    var text: String!
    
    @IBOutlet weak var textFieldForClosure: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = text
    }
    
    @IBAction func textForClosure(_ sender: UITextField) {
        if let myClosure = myClosure {
            let reversText = myClosure(textFieldForClosure.text!)
            textLabel.text = String(reversText)
        }
    }
    
    @IBAction func textForSecondClouse(_ sender: UITextField) {
        if let mySecondClosure = mySecondClosure {
            let count = mySecondClosure(textFieldForClosure.text!)
            textLabel.text = String(count)
        }
    }
}
