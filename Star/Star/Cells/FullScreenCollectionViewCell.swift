//
//  FullScreenCollectionViewCell.swift
//  Star
//
//  Created by Разработка мобильных приложений 3 on 11.05.2022.
//

import UIKit

class FullScreenCollectionViewCell: UICollectionViewCell,UIScrollViewDelegate {
    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.scrollView.delegate = self
        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.minimumZoomScale = 3.5
        // Initialization code
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return photoView
    }
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        scrollView.zoomScale = 1.0
    }
}
