//
//  PhotoGallery.swift
//  Star
//
//  Created by Разработка мобильных приложений 3 on 11.05.2022.
//

import Foundation
import UIKit

class PhotoGallary{
    var images = [UIImage]()
    
    init() {
        setupGallary()
    }
    
    func setupGallary(){
        for i in 0...7 {
            let image = UIImage(named: "image\(i)")!
            images.append(image)
        }
    }
}
