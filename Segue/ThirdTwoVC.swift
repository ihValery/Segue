//
//  ThirdTwoVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 14.02.2021.
//

import UIKit

class ThirdTwoVC: UIViewController {

    var closure: ((String) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        closure?("Я могу передать данные через замыкание")
    }
}
