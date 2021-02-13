//
//  SecondTwoVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 13.02.2021.
//

import UIKit

class SecondTwoVC: UIViewController {
    
    @IBOutlet weak var textFieldGoToHome: UITextField!
    
    var text = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let text = textFieldGoToHome.text, text != "" {
            self.text = text
        } else {
            self.text = "Ты ничего не привез ((("
        }
    }
}
