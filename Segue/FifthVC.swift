import UIKit

protocol FifthVCDelegate: AnyObject {
    func updateLabel(text: String)
}

class FifthVC: UIViewController, FifthVCDelegate {
    var textOne = ""
    
    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var textLabelOne: UILabel!

    @IBAction func goForwardAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let fifthTwoVC = storyboard.instantiateViewController(identifier: "FifthTwoSB") as? FifthTwoVC else { return }
        fifthTwoVC.textForLabel = takingValueFieldOne()
        fifthTwoVC.delegate = self
        
        show(fifthTwoVC, sender: nil)
    }
    
    //Выполняем наш метод от подписанного протокола
    func updateLabel(text: String) {
        textLabelOne.text = text
    }
    
    func takingValueFieldOne() -> String {
        if let text = textFieldOne.text, text != "" { textOne = text }
        else { textOne = "с пустыми руками? тогда чай без сахара )))" }
        return textOne
    }
}
