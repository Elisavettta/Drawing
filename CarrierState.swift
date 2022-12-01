//
//  CarrierState.swift
//  Lesson15.1
//
//  Created by Mac on 28.04.22.
//

import Foundation

// MARK: - CarrierState

class CarrierState {
    var state: StateLines?
    var lineManager: LinesManager
    
    init(lineManager: LinesManager) {
        self.lineManager = lineManager
    }
    
    // MARK: - PublicFunc
    
    public func saveLine() {
        state = lineManager.save()
    }
    
    // MARK: - PublicFunc
    
    public func loadLine() {
        guard state != nil else { return }
        lineManager.load(state: state!)
    }
}
