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
        currentFrequency = frequencies.randomElement()
        oscillator.changeFrequency(to: currentFrequency!.frequency)
    }

    @IBAction func startButtonTapped(_ sender: Any) {
        oscillator.play()
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
        oscillator.stop()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Maybe you were correct.", message: "The answer you are looking for is boobies and \(currentFrequency!.description)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        currentFrequency = getNewFrequency(previousFrequency: currentFrequency!, allFrequencies: frequencies)
        oscillator.stop()
        oscillator.changeFrequency(to: currentFrequency!.frequency)
        oscillator.play()
    }
}
