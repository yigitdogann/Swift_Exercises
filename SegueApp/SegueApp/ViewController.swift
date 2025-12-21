//
//  ViewController.swift
//  SegueApp
//
//  Created by Yiğit Doğan on 20.12.2025.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    
    @IBOutlet weak var firstController: UILabel!
    @IBOutlet weak var name: UITextField!
    
    //viewDidLoad calls only one time when the view appeared.
    //when we go next and back, then it wont work 2nd or 3rd time.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad function called.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called.")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called.")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called.")
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        userName = name.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    
    //this block will work just before performing segue,
    //then segue will redirect screen to destination.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC"{
            //destinationVC has a viewcontroller value, compiler knows that.
            //but we have to say which one, so it acts for that.
            //so we do casting here with saying as!
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

