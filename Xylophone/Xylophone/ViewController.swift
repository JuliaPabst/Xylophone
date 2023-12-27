//
//  ViewController.swift
//  Xylophone
//
//  Created by Julia Pabst on 27.12.23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    let notes = ["C", "D", "E", "F", "G", "A", "B"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: notes[sender.tag])
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: "Sounds/\(soundName)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
