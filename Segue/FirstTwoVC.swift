//
//  FirstTwoVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 13.02.2021.
//

import UIKit

class FirstTwoVC: UIViewController {

    @IBOutlet weak var labelForSegues: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var forSeguesOff = ""
    var forSeguesOn = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = forSeguesOn
        labelForSegues.text = forSeguesOff
    }
}
