//
//  SettingsViewController.swift
//  Star
//
//  Created by  Разработка мобильных приложений 10 on 04.05.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToGreen"{
//            let text = textField.text
//            let newVC = segue.destination as! GreenViewController
//            newVC.textFromVC = text
//        }
//    }
//    @IBAction func goToGreen(_ sender: UIButton) {
//        let newVC = storyboard?.instantiateViewController(withIdentifier: "GreenViewController") as! GreenViewController
//        let text = textField.text
//        newVC.textFromVC = text
//        navigationController?.pushViewController(newVC, animated: true)
//    }
}
