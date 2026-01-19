//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Yiğit Doğan on 17.01.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var is1 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        if is1 == true {
            imageView.image = UIImage(named: "2")
            myLabel.text = "room"
            is1 = false
        } else {
            imageView.image = UIImage(named: "1")
            myLabel.text = "stationary"
            is1 = true
        }
    }


}

