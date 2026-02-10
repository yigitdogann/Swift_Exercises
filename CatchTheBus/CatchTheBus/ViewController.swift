//
//  ViewController.swift
//  CatchTheBus
//
//  Created by Yiğit Doğan on 19.01.2026.
//

import UIKit

class ViewController: UIViewController {
    //globals.
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    @IBOutlet weak var bus1: UIImageView!
    @IBOutlet weak var bus2: UIImageView!
    @IBOutlet weak var bus3: UIImageView!
    @IBOutlet weak var bus4: UIImageView!
    @IBOutlet weak var bus5: UIImageView!
    @IBOutlet weak var bus6: UIImageView!
    @IBOutlet weak var bus7: UIImageView!
    @IBOutlet weak var bus8: UIImageView!
    @IBOutlet weak var bus9: UIImageView!
    @IBOutlet weak var bus10: UIImageView!
    @IBOutlet weak var bus11: UIImageView!
    @IBOutlet weak var bus12: UIImageView!
    var highScore = 0
    var score = 0
    var counter = 15
    var time = Timer()
    var busArray = [UIImageView]()
    var hideTimer = Timer()
    
    //these will execute only once - on the first screen load.
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = "\(counter)"
        scoreLabel.text = "Score: \(score)"
        
        //highscore check
        let storedHighScore = UserDefaults.standard.object(forKey: "highScore")
        if storedHighScore == nil {
            highScore = 0
            highscoreLabel.text = "Highscore: \(highScore)"
        }
        
        if let newScore = storedHighScore as? Int {
            highScore = newScore
            highscoreLabel.text = "Highscore: \(highScore)"
        }
        
        bus1.isUserInteractionEnabled = true
        bus2.isUserInteractionEnabled = true
        bus3.isUserInteractionEnabled = true
        bus4.isUserInteractionEnabled = true
        bus5.isUserInteractionEnabled = true
        bus6.isUserInteractionEnabled = true
        bus7.isUserInteractionEnabled = true
        bus8.isUserInteractionEnabled = true
        bus9.isUserInteractionEnabled = true
        bus10.isUserInteractionEnabled = true
        bus11.isUserInteractionEnabled = true
        bus12.isUserInteractionEnabled = true
        
        let recognizer1 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer2 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer3 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer4 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer5 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer6 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer7 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer8 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer9 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer10 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer11 = UIGestureRecognizer(target: self, action: #selector(clicked))
        let recognizer12 = UIGestureRecognizer(target: self, action: #selector(clicked))
        
        bus1.addGestureRecognizer(recognizer1)
        bus2.addGestureRecognizer(recognizer2)
        bus3.addGestureRecognizer(recognizer3)
        bus4.addGestureRecognizer(recognizer4)
        bus5.addGestureRecognizer(recognizer5)
        bus6.addGestureRecognizer(recognizer6)
        bus7.addGestureRecognizer(recognizer7)
        bus8.addGestureRecognizer(recognizer8)
        bus9.addGestureRecognizer(recognizer9)
        bus10.addGestureRecognizer(recognizer10)
        bus11.addGestureRecognizer(recognizer11)
        bus12.addGestureRecognizer(recognizer12)
        
        //store all buses in an array, and hide them
        busArray = [bus1, bus2, bus3, bus4, bus5, bus6, bus7, bus8, bus9, bus10, bus11, bus12]
        hideBus()
        
        //call updateTime function every 1 second.
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        
        //call hidebus func. every 0.5 second
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideBus), userInfo: nil, repeats: true)
    }
    
    @objc func hideBus(){
        //hide all of them with for loop
        for bus in busArray{
            bus.isHidden = true
        }
        
        //create random value (0 - ...) and unhide it
        let random = Int(arc4random_uniform(UInt32(busArray.count-1)))
        busArray[random].isHidden = false
    }
    
    
    @objc func updateTime() {
        //decrement counter on each call.
        timeLabel.text = "\(counter)"
        counter -= 1
        
        //stop timer and random drawer if zero.
        if counter == 0 {
            time.invalidate()
            hideTimer.invalidate()
            timeLabel.text = "Time is over!"
            
            for bus in busArray{
                bus.isHidden = true
            }//hide all if no time
            
            //high-score
            if score > highScore{
                highScore = score
                highscoreLabel.text = "Highscore: \(highScore)"
                UserDefaults.standard.set(highScore, forKey: "highScore")
            }
            
            
            //alert pop-up section at end-game
            let alert = UIAlertController(title: "Time is Over!", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            
            let replayButton = UIAlertAction(title: "Play again!", style: UIAlertAction.Style.default) { UIAlertAction in
                //replay actions section
                self.score = 0
                self.scoreLabel.text = "Score: \(self.score)"
                self.counter = 15
                self.timeLabel.text = "\(self.counter)"
                
                //call updateTime function every 1 second.
                self.time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateTime), userInfo: nil, repeats: true)
                
                //call hidebus func. every 0.5 second
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hideBus), userInfo: nil, repeats: true)
            }
            alert.addAction(okButton)
            alert.addAction(replayButton)
            
            
            self.present(alert, animated: true)
        }
    }
    
    //increment & print score on each call.
    @objc func clicked() {
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
    
    
}

