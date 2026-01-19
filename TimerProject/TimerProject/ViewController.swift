//
//  ViewController.swift
//  TimerProject
//
//  Created by Yiğit Doğan on 19.01.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = "Time: \(counter)"
        
        //thanks to scheduled timer, create & start steps will be performed as 1 step.
        //we assigned it to timer variable to invalidate(stop) it later.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0{
            timer.invalidate()  //stop the timer if 0
            timeLabel.text = "Time is up!"
        }
    }

    @IBAction func buttonClick(_ sender: Any) {
        print("clicked")
    }
    
}

