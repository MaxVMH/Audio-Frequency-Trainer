//
//  Frequency.swift
//  Audio-Frequency-Trainer
//
//  Created by Maxim Van Meerhaeghe on 17/06/2020.
//  Copyright © 2020 Mixam. All rights reserved.
//

import Foundation

struct Frequency: Equatable {
    let frequency: Int
    let difficulty: DifficultyMode
    var description: String {
        if frequency >= 1000 {
            return "\(Double(frequency)/1000) kHz"
        }
        return "\(frequency) Hz"
    }
}

func makeFrequencyArray() -> [Frequency] {
    var frequencies = [Frequency]()
    frequencies += [Frequency(frequency: 20, difficulty: .pro)]
    frequencies += [Frequency(frequency: 25, difficulty: .pro)]
    frequencies += [Frequency(frequency: 32, difficulty: .pro)]
    frequencies += [Frequency(frequency: 40, difficulty: .pro)]
    frequencies += [Frequency(frequency: 50, difficulty: .pro)]
    frequencies += [Frequency(frequency: 63, difficulty: .hard)]
    frequencies += [Frequency(frequency: 80, difficulty: .hard)]
    frequencies += [Frequency(frequency: 100, difficulty: .normal)]
    frequencies += [Frequency(frequency: 125, difficulty: .hard)]
    frequencies += [Frequency(frequency: 160, difficulty: .hard)]
    frequencies += [Frequency(frequency: 200, difficulty: .easy)]
    frequencies += [Frequency(frequency: 250, difficulty: .hard)]
    frequencies += [Frequency(frequency: 315, difficulty: .hard)]
    frequencies += [Frequency(frequency: 400, difficulty: .normal)]
    frequencies += [Frequency(frequency: 500, difficulty: .hard)]
    frequencies += [Frequency(frequency: 630, difficulty: .hard)]
    frequencies += [Frequency(frequency: 800, difficulty: .easy)]
    frequencies += [Frequency(frequency: 1000, difficulty: .hard)]
    frequencies += [Frequency(frequency: 1250, difficulty: .hard)]
    frequencies += [Frequency(frequency: 1600, difficulty: .normal)]
    frequencies += [Frequency(frequency: 2000, difficulty: .hard)]
    frequencies += [Frequency(frequency: 2500, difficulty: .hard)]
    frequencies += [Frequency(frequency: 3150, difficulty: .easy)]
    frequencies += [Frequency(frequency: 4000, difficulty: .hard)]
    frequencies += [Frequency(frequency: 5000, difficulty: .hard)]
    frequencies += [Frequency(frequency: 6300, difficulty: .normal)]
    frequencies += [Frequency(frequency: 8000, difficulty: .hard)]
    frequencies += [Frequency(frequency: 10000, difficulty: .hard)]
    frequencies += [Frequency(frequency: 12500, difficulty: .easy)]
    frequencies += [Frequency(frequency: 16000, difficulty: .hard)]
    frequencies += [Frequency(frequency: 20000, difficulty: .pro)]
    return frequencies
}

func getNewFrequency(previousFrequency: Frequency, allFrequencies: [Frequency]) -> Frequency {
    var nextFrequency = allFrequencies.randomElement()
    while (nextFrequency == previousFrequency) {
        nextFrequency = allFrequencies.randomElement()
    }
    return nextFrequency!
}
