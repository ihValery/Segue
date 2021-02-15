//
//  ThirdTwoVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 14.02.2021.
//

import UIKit

class ThirdTwoVC: UIViewController {

    //Привязываем безымянное замыкание к переменной ))). Делаем его инициализацию отложенной, возможно мы и не будем вызывать (?)
    //
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
        //Если мы можем достать замыкание
        if let myClosure = myClosure {
            //Вызываем замыкание и его результат присваевам переменнной (для дальнейшего редактирования)
            //Не надо дергать замыкание если оно пустое
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
