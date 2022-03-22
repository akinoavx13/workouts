//
//  HKWorkoutActivityType+Extensions.swift
//  Workouts WatchKit Extension
//
//  Created by Maxime Maheo on 21/03/2022.
//

import HealthKit

extension HKWorkoutActivityType: Identifiable {
    
    // MARK: - Properties
    
    public var id: UInt { rawValue }
    
    var name: String {
        switch self {
        case .running: return "Run"
        default: return "Unknown"
        }
    }
}
