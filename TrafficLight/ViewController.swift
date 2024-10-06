//
//  ViewController.swift
//  TrafficLight
//
//  Created by Артем Иванов on 06.10.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var redIndicatorView: UIView!
    @IBOutlet weak var yellowIndicatorView: UIView!
    @IBOutlet weak var greenIndicatorView: UIView!
    
    @IBOutlet weak var goButton: UIButton!
    
    private var currentIndicator = CurrentIndicator.red
    private let indicatorOn = 1.0
    private let indicatorOff = 0.2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goButton.layer.cornerRadius = 10
        redIndicatorView.layer.cornerRadius = 45
        yellowIndicatorView.layer.cornerRadius = 45
        greenIndicatorView.layer.cornerRadius = 45
       
        
        redIndicatorView.alpha = indicatorOff
        yellowIndicatorView.alpha = indicatorOff
        greenIndicatorView.alpha = indicatorOff
    }
    
    @IBAction func goButtonTapped(_ sender: UIButton) {
        
        sender.setTitle("NEXT!", for: .normal)
        
        switch currentIndicator {
        case .red:
            greenIndicatorView.alpha = indicatorOff
            redIndicatorView.alpha = indicatorOn
            currentIndicator = .yellow
        case .yellow:
            redIndicatorView.alpha = indicatorOff
            yellowIndicatorView.alpha = indicatorOn
            currentIndicator = .green
        case .green:
            greenIndicatorView.alpha = indicatorOn
            yellowIndicatorView.alpha = indicatorOff
            currentIndicator = .red
        }
    }
    
    enum CurrentIndicator {
        case red
        case yellow
        case green
    }
}
