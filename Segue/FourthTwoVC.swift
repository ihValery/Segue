//
//  FourthTwoVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 16.02.2021.
//

import UIKit

class FourthTwoVC: UIViewController {
    
    var text = ""
    //создаем ту самую слабую ссылку на протокол weak var delegate: FirstViewControllerDelegate
    weak var delegate: FourthVC?
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
        
    @IBAction func backAction(_ sender: Any) {
        takingValueField()
        delegate?.update(text: text)
        navigationController?.popViewController(animated: true)
    }
    
    func takingValueField() {
        if let text = textField.text, text != "" {
            self.text = text
        } else {
            text = "ты оставил пустое поле"
        }
    }
}







