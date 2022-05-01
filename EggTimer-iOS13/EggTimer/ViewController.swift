//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 300,"Medium":420,"Hard":720]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    var soundPlayer: AVAudioPlayer!
    
   @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        totalTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        
    }
    @objc func updateTimer(){
        if secondsPassed < totalTime{
            secondsPassed += 1
            progressBar.progress =  Float(secondsPassed) / Float(totalTime)
            
        }else{
            timer.invalidate()
            print("Timer is done")
            titleLabel.text = "Done"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            soundPlayer = try! AVAudioPlayer(contentsOf: url!)
            soundPlayer.play()
            
        }
    }
}




