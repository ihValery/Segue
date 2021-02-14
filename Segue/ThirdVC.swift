//
//  ThirdVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 14.02.2021.
//

import UIKit

class ThirdVC: UIViewController {
    
    @IBOutlet weak var textFieldOne: UITextField!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        //Проверили не нил
        guard let thirdTwoVC = storyboard?.instantiateViewController(identifier: "ThirdTwoSB") as? ThirdTwoVC else { return }
        thirdTwoVC.text = textFieldOne.text! + "- firstClosure"
        thirdTwoVC.myClosure = { [weak self] myText in
            self?.textFieldOne.text = myText
            let reversStr = String(myText.reversed())
            return reversStr
        }
        navigationController?.pushViewController(thirdTwoVC, animated: true)
    }
    
    @IBAction func mySecondClosureAction(_ sender: UIButton) {
        guard let thirdTwoVC = storyboard?.instantiateViewController(identifier: "ThirdTwoSB") as? ThirdTwoVC else { return }
        thirdTwoVC.text = textFieldOne.text! + "- secondClosure"
        thirdTwoVC.mySecondClosure = { [weak self] notMyText in
            self?.textFieldOne.text = notMyText
            return notMyText.count
        }
        navigationController?.pushViewController(thirdTwoVC, animated: true)
    }
    
    @IBAction func myThirdClosureAction(_ sender: UIButton) {
        guard let thirdThreeVC = storyboard?.instantiateViewController(identifier: "ThirdThreeSB") as? ThirdThreeVC else { return }
        thirdThreeVC.text = textFieldOne.text! + "- thirdClosure"
        thirdThreeVC.myThirdClosure = { [weak self] myText in
            self?.textFieldOne.text = myText
            return myText.uppercased()
        }
        navigationController?.pushViewController(thirdThreeVC, animated: true)
    }
}
