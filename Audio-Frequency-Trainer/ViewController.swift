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
    var frequencies = createFilteredFrequenciesArray(difficultyMode: .normal)
    var currentFrequency: Frequency? = nil
    var difficultyMode: DifficultyMode = .normal
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentFrequency = getNewFrequency(previousFrequency: Frequency(frequency: 400, difficulty: .normal), frequencies: frequencies, difficultyMode: .normal)
        oscillator.changeFrequency(to: currentFrequency!.frequency)
        
        self.frequencyPickerView.delegate = self
        self.frequencyPickerView.dataSource = self
        
        
        difficultyModeSegmentedControl.removeAllSegments()
        difficultyModeSegmentedControl.insertSegment(withTitle: "Easy", at: 0, animated: true)
        difficultyModeSegmentedControl.insertSegment(withTitle: "Normal", at: 1, animated: true)
        difficultyModeSegmentedControl.insertSegment(withTitle: "Hard", at: 2, animated: true)
        difficultyModeSegmentedControl.insertSegment(withTitle: "Pro", at: 3, animated: true)
    }
    
    @IBAction func playButtonActivated(_ sender: Any) {
        oscillator.play()
    }
    
    @IBAction func playButtonReleased(_ sender: Any) {
        oscillator.stop()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        let pickedFrequency = frequencies[frequencyPickerView.selectedRow(inComponent: 0)]
        var alertTitle: String
        var alertMessage: String
        
        if pickedFrequency == currentFrequency {
            alertTitle = "Correct!"
            alertMessage = "Try some more."
            currentFrequency = getNewFrequency(previousFrequency: currentFrequency!, frequencies: frequencies, difficultyMode: .normal)
            oscillator.changeFrequency(to: currentFrequency!.frequency)
        } else {
            alertTitle = "Not correct!"
            alertMessage = "Try again."
        }
        
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
    
    @IBOutlet weak var difficultyModeSegmentedControl: UISegmentedControl!
}
