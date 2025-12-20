//
//  ViewController.swift
//  FirstApp
//
//  Created by Yiğit Doğan on 9.12.2025.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var images: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func buttons(_ sender: Any) {
        images.image = UIImage(named: "2")
    }
    

}

