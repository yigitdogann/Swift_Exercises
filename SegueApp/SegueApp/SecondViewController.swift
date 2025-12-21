//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Yiğit Doğan on 20.12.2025.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondController: UILabel!
    @IBOutlet weak var namePlace: UILabel!
    
    var myName = ""
    
    //this func. will be called as first when screen drew.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namePlace.text = myName
    }

}
