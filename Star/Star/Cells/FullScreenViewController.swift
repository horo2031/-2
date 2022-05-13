//
//  FullScreenViewController.swift
//  Star
//
//  Created by Разработка мобильных приложений 3 on 11.05.2022.
//

import UIKit

class FullScreenViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var photoGallery:PhotoGallary!
    let countCells = 1
    let identifire = "FullScreenCell"
    var indexPath: IndexPath!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: "FullScreenCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: identifire)
        collectionView.performBatchUpdates(nil) { (result) in
            self.collectionView.scrollToItem(at: self.indexPath, at: .centeredHorizontally, animated: false)
        }
    }
    
}
extension FullScreenViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection: Int) -> Int {
       return photoGallery.images.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifire, for: indexPath) as! FullScreenCollectionViewCell
        cell.photoView.image = photoGallery.images[indexPath.item]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCV = collectionView.frame 
        
        let widthCell = frameCV.width / CGFloat(countCells)
        let heightCell = widthCell
        
        return CGSize(width: widthCell, height: heightCell)
    }
    
}
