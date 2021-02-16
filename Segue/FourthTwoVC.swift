//
//  FourthTwoVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 16.02.2021.
//

import UIKit

class FourthTwoVC: UIViewController {
    
    //создаем ту самую слабую ссылку на протокол weak var delegate: FirstViewControllerDelegate
    weak var delegate: FourthVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backAction(_ sender: Any) {
        delegate?.update(text: "k.0ff молодец")
    }
    
}
