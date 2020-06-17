//
//  Frequency.swift
//  Audio-Frequency-Trainer
//
//  Created by Maxim Van Meerhaeghe on 17/06/2020.
//  Copyright © 2020 Mixam. All rights reserved.
//

import Foundation

struct Frequency {
    let value: Int
    var description: String {
        if value > 1000 {
            return "\(Double(value)/1000) kHz"
        }
        return "\(value) Hz"
    }
}
