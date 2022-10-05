//
//  ViewController.swift
//  Xylophone
//
//  Created by Eldor Alikuvvatov 2022.10.05 

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var playing: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
        
        playTheSound(soundName: sender.currentTitle!)
    }
    
    func playTheSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        playing = try! AVAudioPlayer(contentsOf: url!)
        playing.playing()
                
    }
}


