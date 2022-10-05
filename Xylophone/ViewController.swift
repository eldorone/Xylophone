//
//  ViewController.swift
//  Xylophone
//
//  Created by Eldor Alikuvvatov 2022.10.05 

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var play: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
        
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        play = try! AVAudioPlayer(contentsOf: url!)
        play.play()
                
    }
}


