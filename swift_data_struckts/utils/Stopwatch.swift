//
//  Stopwatch.swift
//  swift_data_struckts
//
//  Created by ericFlutter on 01.12.2024.
//

import Foundation

struct Stopwatch {
    private var time: Date?
    
    mutating func start() {
        self.time = Date()
    }
    
    mutating func stop() {
        self.time = nil
    }
    
    func ellapsedTime() -> TimeInterval {
         -(self.time?.timeIntervalSinceNow ?? 0)
    }
    
}

