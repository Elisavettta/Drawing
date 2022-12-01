//
//  LineModel.swift
//  Lesson15.1
//
//  Created by Mac on 28.04.22.
//

import UIKit

// MARK: - LineModel

struct LineModel {
    var start: CGPoint
    var end: CGPoint
    var color: UIColor
    
    init(start: CGPoint, end: CGPoint, color: UIColor) {
        self.start = start
        self.end = end
        self.color = color
    }
}
