//
//  FirstVC.swift
//  Segue
//
//  Created by Валерий Игнатьев on 10.02.2021.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var textFieldForSegues: UITextField!
    @IBOutlet weak var textFieldWithOUT: UITextField!
    @IBOutlet weak var switchWithout: UISwitch!
    @IBOutlet weak var swithforSegue: UISwitch!
    
    var tempWithout = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func passDataActionWithOUT() {
        //Создаем свойство, и указываем НЕ identifier сториборда, а его реальное имя ))) смотри вверх
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //Согдаем с помощью метода instantiateViewController и не забываем кастить, для доступа к свойствам ВТОРОГО вьюконтролера
        guard let firstTwoVC = storyboard.instantiateViewController(identifier: "FirstTwoSB") as? FirstTwoVC else { return }
        if !switchWithout.isOn {
            firstTwoVC.forSeguesOff = getTextWithout()
        } else {
            firstTwoVC.forSeguesOn =
            """
            @IBAction func passDataActionWithOUT() {

            //Создаем свойство, и указываем НЕ identifier сториборда, а его реальное имя ))) смотри вверх
            let storyboard = UIStoryboard(name: "Main", bundle: nil)

            //Согдаем с помощью метода instantiateViewController и не забываем кастить, для доступа к свойствам ВТОРОГО вьюконтролера
            guard let firstTwoVC = storyboard.instantiateViewController(identifier: "FirstTwoSB") as? FirstTwoVC else { return }
            firstTwoVC.tempForSegues = getTextWithout()
                           
            //Не забываем вызвать метод show ))) который как раз и откроет нам данный контролер
            show(firstTwoVC, sender: nil)
            }

            func getTextWithout() -> String {
            guard let text = textFieldWithOUT.text, text != "" else { return "Вы забыли ввести данные" }
            return text
            }
            """
        }
    
        //Не забываем вызвать метод show ))) который как раз и откроет нам данный контролер
        show(firstTwoVC, sender: nil)
    }
    
    func getTextWithout() -> String {
        guard let text = textFieldWithOUT.text, text != "" else { return "Вы забыли ввести данные" }
        return text
    }
    
    //Главный метод, с которым мы будем работать - prepare(for segue:).
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Всегда надо проверять соотвествует ли segue.identifier названию нашего segue. По тому ли пути идем )))
        guard segue.identifier == "toFirstTwoSB" else { return }
        //Устанавливаем destination, наш “пункт назначения” и кастим его до нужного класса
        guard let myDestination = segue.destination as? FirstTwoVC else { return }
        if !swithforSegue.isOn {
            myDestination.forSeguesOff = getText()
        } else {
            myDestination.forSeguesOn =
            """
            //Главный метод, с которым мы будем работать - prepare(for segue:).
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            //Всегда надо проверять соотвествует ли segue.identifier названию нашего segue. По тому ли пути идем )))
            guard segue.identifier == "toFirstTwoSB" else { return }

            //Устанавливаем destination, наш “пункт назначения” и кастим его до нужного класса
            guard let myDestination = segue.destination as? FirstTwoVC else { return }
            myDestination.forSeguesOff = getText()
            }
                
            func getText() -> String {
            guard let text = textFieldForSegues.text, text != "" else { return "Вы забыли ввести данные" }
            return text
            }
            """
        }
    }
    
    func getText() -> String {
        guard let text = textFieldForSegues.text, text != "" else { return "Вы забыли ввести данные" }
        return text
    }
}
