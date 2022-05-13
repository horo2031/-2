//
//  SettingsViewController.swift
//  Вика 1210
//
//  Created by Разработка мобильных приложений 9 on 06.05.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func goToGreen(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "GreenViewController")
        navigationController?.pushViewController(newVC!, animated: true)
    }
    
}
