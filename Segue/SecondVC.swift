//
//  SecondVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 10.02.2021.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var latelText: UILabel!

    //Unwind + enter задаем имя, кастим и пишем тело функции (кнопку не привязывать и не проверять identifier!)
    //Не забываем в SecondTwoVC от кнопки перетянуть segue к кнопке Exit!
    @IBAction func unwindToGoToHome(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as? SecondTwoVC
        latelText.text = sourceViewController?.text
    }
}
