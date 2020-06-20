//
//  DifficultyMode.swift
//  Audio-Frequency-Trainer
//
//  Created by Maxim Van Meerhaeghe on 17/06/2020.
//  Copyright © 2020 Mixam. All rights reserved.
//

import Foundation

enum DifficultyMode: Int, CaseIterable {
    case easy, normal, hard, pro
    
    var description: String {
        switch self {
        case .easy: return  "Easy"
        case .normal: return "Normal"
        case .hard: return   "Hard"
        case .pro: return    "Pro"
        }
    }
}
