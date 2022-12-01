//
//  LinesManager.swift
//  Lesson15.1
//
//  Created by Mac on 28.04.22.
//

import UIKit

// MARK: - LinesManager

class LinesManager {
    static let shatred = LinesManager()
    var lineArray = [LineModel]()
    
    func save() -> StateLines {
        return StateLines(lines: self.lineArray)
    }
    
    func load(state: StateLines) {
        self.lineArray = state.lineArray
    }
    
    // MARK: - PublicFunc
    
   public func printLines(in view: UIView) {
        for screen in view.layer.sublayers! {
            screen.removeFromSuperlayer()
        }
        for line in lineArray {
            let path = UIBezierPath()
            path.move(to: line.start)
            path.move(to: line.end)
            drawShapeLayer(path, line.color, view)
        }
    }
    
    // MARK: - PrivateFunc
    
    private func drawShapeLayer(_ path: UIBezierPath, _ lineColor: UIColor, _ view: UIView) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(shapeLayer)
        view.setNeedsDisplay()
    }
}
