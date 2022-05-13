//
//  GreenViewController.swift
//  Star
//
//  Created by  Разработка мобильных приложений 10 on 04.05.2022.
//

import UIKit

class GreenViewController: UIViewController {
    var textFromVC:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = textFromVC
    }
    
    @IBAction func goToRoot(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
