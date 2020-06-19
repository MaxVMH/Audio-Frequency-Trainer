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
    var description: String {
        if frequency >= 1000 {
            return "\(Double(frequency)/1000) kHz"
        }
        return "\(frequency) Hz"
    }
}

func makeFrequencyArray(difficultyMode: DifficultyMode) -> [Frequency] {
    var frequencies = [Frequency]()
    switch difficultyMode {
    case .easy:
        frequencies += [Frequency(frequency: 250)]
        frequencies += [Frequency(frequency: 800)]
        frequencies += [Frequency(frequency: 2500)]
        frequencies += [Frequency(frequency: 8000)]
        return frequencies
    case .normal:
        frequencies += [Frequency(frequency: 100)]
        frequencies += [Frequency(frequency: 200)]
        frequencies += [Frequency(frequency: 400)]
        frequencies += [Frequency(frequency: 800)]
        frequencies += [Frequency(frequency: 1600)]
        frequencies += [Frequency(frequency: 3150)]
        frequencies += [Frequency(frequency: 6300)]
        frequencies += [Frequency(frequency: 12500)]
        return frequencies
    case .hard:
        frequencies += [Frequency(frequency: 80)]
        frequencies += [Frequency(frequency: 125)]
        frequencies += [Frequency(frequency: 160)]
        frequencies += [Frequency(frequency: 250)]
        frequencies += [Frequency(frequency: 315)]
        frequencies += [Frequency(frequency: 500)]
        frequencies += [Frequency(frequency: 630)]
        frequencies += [Frequency(frequency: 1000)]
        frequencies += [Frequency(frequency: 1250)]
        frequencies += [Frequency(frequency: 2000)]
        frequencies += [Frequency(frequency: 2500)]
        frequencies += [Frequency(frequency: 4000)]
        frequencies += [Frequency(frequency: 5000)]
        frequencies += [Frequency(frequency: 8000)]
        frequencies += [Frequency(frequency: 10000)]
        frequencies += [Frequency(frequency: 16000)]
        return frequencies
    case .pro:
        frequencies += [Frequency(frequency: 63)]
        frequencies += [Frequency(frequency: 80)]
        frequencies += [Frequency(frequency: 100)]
        frequencies += [Frequency(frequency: 125)]
        frequencies += [Frequency(frequency: 160)]
        frequencies += [Frequency(frequency: 200)]
        frequencies += [Frequency(frequency: 250)]
        frequencies += [Frequency(frequency: 315)]
        frequencies += [Frequency(frequency: 400)]
        frequencies += [Frequency(frequency: 500)]
        frequencies += [Frequency(frequency: 630)]
        frequencies += [Frequency(frequency: 800)]
        frequencies += [Frequency(frequency: 1000)]
        frequencies += [Frequency(frequency: 1250)]
        frequencies += [Frequency(frequency: 1600)]
        frequencies += [Frequency(frequency: 2000)]
        frequencies += [Frequency(frequency: 2500)]
        frequencies += [Frequency(frequency: 3150)]
        frequencies += [Frequency(frequency: 4000)]
        frequencies += [Frequency(frequency: 5000)]
        frequencies += [Frequency(frequency: 6300)]
        frequencies += [Frequency(frequency: 8000)]
        frequencies += [Frequency(frequency: 10000)]
        frequencies += [Frequency(frequency: 12500)]
        frequencies += [Frequency(frequency: 16000)]
        return frequencies
    }
}

func getNewFrequency(previousFrequency: Frequency, allFrequencies: [Frequency]) -> Frequency {
    var nextFrequency = allFrequencies.randomElement()
    while (nextFrequency == previousFrequency) {
        nextFrequency = allFrequencies.randomElement()
    }
    return nextFrequency!
}
