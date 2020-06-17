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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonTapped(_ sender: Any) {
        oscillator.play()
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
        oscillator.stop()
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
    }
}

