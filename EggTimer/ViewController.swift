//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLable: UILabel!
    
    let eggTimes: [String: Int] = ["Soft": 3, "Medium": 420, "Hard": 720]
    var secondsLeft = 60
    var timer = Timer()
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        secondsLeft = eggTimes[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    @objc func updateCounter() {
        //example functionality
        if secondsLeft > 0 {
            print("\(secondsLeft) seconds")
            secondsLeft -= 1
        }
        else {
            timer.invalidate()
            titleLable.text = "Done!"
        }
    }

}
