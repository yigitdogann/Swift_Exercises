//
//  ViewController.swift
//  AlertProject
//
//  Created by Yiğit Doğan on 21.12.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signButton(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "okay", style: UIAlertAction.Style.default) { UIAlertAction in
            //button click action codes
            print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true , completion: nil)
         */
        
        /*
        if nameText.text == "" {
            let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil )
            
        } else if passwordText.text == "" {
            let alert = UIAlertController(title: "Error!", message: "Password not found!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil )
         
        } else if passwordText.text != passwordText2.text {
            let alert = UIAlertController(title: "Error!", message: "Passwords don't match!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil )
         
        } else {
            let alert = UIAlertController(title: "Successful", message: "Signed up successfully.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil )
        }
         */
        
        if nameText.text == "" {
            myAlert(titletext: "Error!", messagetext: "Name not found!")
        } else if passwordText.text == "" {
            myAlert(titletext: "Error!", messagetext: "Password not found!")
        } else if passwordText.text != passwordText2.text {
            myAlert(titletext: "Errror!", messagetext: "Passwords don't match!")
        } else {
            myAlert(titletext: "Succesful", messagetext: "Signed up successfully.")
        }
        
        func myAlert(titletext: String, messagetext: String){
            let alert = UIAlertController(title: titletext, message: messagetext, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil )
        }
    }
    
}

