//
//  FourthVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 16.02.2021.
//

import UIKit

//Подписываем его под class (что означает AnyObjects). Это позволит в будущем создать слабую (weak) ссылку на протокол.
protocol FourthVCDelegate: AnyObject {
    func update(text: String) -> Void
}

//Подписываем класс по протокол
class FourthVC: UIViewController, FourthVCDelegate {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //Выполняем наш метод от подписанного протокола
    func update(text: String) {
        textLabel.text = text
    }
}
