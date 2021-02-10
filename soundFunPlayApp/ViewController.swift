//
//  ViewController.swift
//  soundFunPlayApp
//
//  Created by harsh yadav on 24/01/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func pressButton(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        
        
        sender.alpha = 0.5
          //Code should execute after 0.2 second delay.
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            sender.alpha = 1.0
              //Bring's sender's opacity back up to fully opaque.
        
    }
        
    }
    func playSound(soundName : String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    


}


