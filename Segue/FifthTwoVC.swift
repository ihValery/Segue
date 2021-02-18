import UIKit

class FifthTwoVC: UIViewController {

    var text = ""
    var textForLabel = ""
    
    //создаем ту самую слабую ссылку на протокол weak var delegate: FirstViewControllerDelegate
    weak var delegate: FifthVCDelegate?
    
    @IBOutlet weak var textFieldTwo: UITextField!
    @IBOutlet weak var textLabelTwo: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabelTwo.text = textForLabel
    }
    
    @IBAction func goBackAction(_ sender: UIButton) {
        takingValueField()
        delegate?.updateLabel(text: text)
        navigationController?.popViewController(animated: true)
    }
    
    func takingValueField() {
        if let text = textFieldTwo.text, text != "" { self.text = text }
        else { text = "ты оставил пустое поле" }
    }
}
