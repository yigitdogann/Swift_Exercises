//
//  ViewController.swift
//  BirthdaySaver
//
//  Created by Yiğit Doğan on 11.12.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var date: UITextField!
    
    @IBOutlet weak var nameresult: UILabel!
    
    @IBOutlet weak var dateresult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedDate = UserDefaults.standard.object(forKey: "date")
        
        if let newName = storedName as? String {
            nameresult.text = newName
        }
        if let newDate = storedDate as? String {
            dateresult.text = newDate
        }
    }

    @IBAction func button(_ sender: Any) {
        
        UserDefaults.standard.set(name.text, forKey: "name")
        UserDefaults.standard.set(date.text, forKey: "date")
        
        
        nameresult.text = "Name: \(name.text!)"
        dateresult.text = "Birthday: \(date.text!)"
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedDate = UserDefaults.standard.object(forKey: "date")
        
        if (storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            nameresult.text = "Name: "
        }
        if (storedDate as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "date")
            dateresult.text = "Birthday: "
        }
    }
}

