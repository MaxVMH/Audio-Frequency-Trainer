//
//  ViewController.swift
//  Audio-Frequency-Trainer
//
//  Created by Maxim Van Meerhaeghe on 17/06/2020.
//  Copyright © 2020 Mixam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var oscillator = Oscillator()
    var frequencies = makeFrequencyArray(difficultyMode: .normal)
    var currentFrequency: Frequency? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentFrequency = frequencies.randomElement()!
    }

    @IBAction func startButtonTapped(_ sender: Any) {
        oscillator.play()
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
        oscillator.stop()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        currentFrequency = frequencies.randomElement()!
        oscillator.stop()
        oscillator.changeFrequency(to: currentFrequency!.frequency)
        oscillator.play()
    }
}
