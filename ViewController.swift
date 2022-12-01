//
//  ViewController.swift
//  Lesson15.1
//
//  Created by Mac on 27.04.22.
//

import UIKit

// MARK: - ViewController

class ViewController: UIViewController {
    
    // MARK: - DrawView
    
    @IBOutlet private weak var viewBoard: DrawView!
    
    var carriarState: CarrierState!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBoard.lineColor = UIColor.black //
        let lines = LinesManager.shatred
        carriarState = CarrierState(lineManager: lines)
}
    // MARK: - PrivateFunc
    
    @IBAction private func loadAction(_ sender: Any) {
        carriarState.loadLine()
        carriarState.lineManager.printLines(in: viewBoard)
    }
    
    @IBAction private func redAction(_ sender: Any) {
        viewBoard.lineColor = UIColor.red
    }
    
    @IBAction private func greenAction(_ sender: Any) {
        viewBoard.lineColor = UIColor.green
    }
    
    @IBAction private func blueAction(_ sender: Any) {
        viewBoard.lineColor = UIColor.blue
    }
    
    @IBAction private func whiteAction(_ sender: Any) {
        viewBoard.lineColor = UIColor.white
    }
    
}
