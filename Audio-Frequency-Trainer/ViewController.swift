//
//  ViewController.swift
//  Audio-Frequency-Trainer
//
//  Created by Maxim Van Meerhaeghe on 17/06/2020.
//  Copyright © 2020 Mixam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var oscillator = Oscillator()
    var frequencies = makeFrequencyArray(difficultyMode: .normal)
    var currentFrequency: Frequency? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentFrequency = frequencies.randomElement()
        oscillator.changeFrequency(to: currentFrequency!.frequency)
        
        self.frequencyPickerView.delegate = self
        self.frequencyPickerView.dataSource = self
    }
    
    @IBAction func playButtonActivated(_ sender: Any) {
        oscillator.play()
    }
    
    @IBAction func playButtonReleased(_ sender: Any) {
        oscillator.stop()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Maybe you were correct.", message: "The answer you are looking for is \(currentFrequency!.description)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        currentFrequency = getNewFrequency(previousFrequency: currentFrequency!, allFrequencies: frequencies)
        oscillator.changeFrequency(to: currentFrequency!.frequency)
    }
    
    
    @IBOutlet weak var frequencyPickerView: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return frequencies.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(frequencies[row].description)"
    }
}
