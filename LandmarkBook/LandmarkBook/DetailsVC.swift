//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by Yiğit Doğan on 4.03.2026.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var landmarkImage: UIImageView!
    
    var selectedLandmarkLabel = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkLabel
        landmarkImage.image = selectedLandmarkImage
    }
}
