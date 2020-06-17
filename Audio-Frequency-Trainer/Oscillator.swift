//
//  Oscillator.swift
//  Audio-Frequency-Trainer
//
//  Created by Maxim Van Meerhaeghe on 17/06/2020.
//  Copyright © 2020 Mixam. All rights reserved.
//

import Foundation
import AudioKit

class Oscillator {
    var oscillator = AKOscillator()
    
    init() {
        AudioKit.output = oscillator
        try? AudioKit.start()
        oscillator.rampDuration = 0
    }
    
    func play() {
        oscillator.play()
    }
    func stop() {
        oscillator.stop()
    }
    func changeFrequency(to value: Int) {
        oscillator.frequency = Double(value)
    }
    func changeVolume(to value: Int) {
        oscillator.amplitude = Double(value)
    }
}
