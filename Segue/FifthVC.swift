//
//  FifthVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 17.02.2021.
//

import UIKit

protocol FifthVCDelegate: AnyObject {
    func updateLabel(text: String)
}

class FifthVC: UIViewController, FifthVCDelegate {

    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var textLabelOne: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func goForwardAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let fifthTwoVC = storyboard.instantiateViewController(identifier: "FifthTwoSB") as? FifthTwoVC else { return }
        
        fifthTwoVC.delegate = self
        show(fifthTwoVC, sender: nil)
    }
    
    func updateLabel(text: String) {
        textLabelOne.text = text
    }
    
}



//import UIKit
//
////Подписываем его под class (что означает AnyObjects). Это позволит в будущем создать слабую (weak) ссылку на протокол.
//protocol FourthVCDelegate: AnyObject {
//
//    func update(text: String)
//}
//
////Подписываем класс по протокол
//class FourthVC: UIViewController, FourthVCDelegate {
//    
//    @IBOutlet weak var textLabel: UILabel!
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let fourthTwo = segue.destination as? FourthTwoVC else { return }
//        fourthTwo.delegate = self
//    }
//    
//    //Выполняем наш метод от подписанного протокола
//    func update(text: String) {
//        textLabel.text = text
//    }
//}
