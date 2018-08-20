//
//  ViewController.swift
//  JumpingLabel
//
//  Created by chings228 on 08/20/2018.
//  Copyright (c) 2018 chings228. All rights reserved.
//

import UIKit

import UIKit
import JumpingLabel

var isBlinking = false

let blinkingLabel = JumpingLabel(frame:CGRect(x: 10, y: 20, width: 200, height: 30))

class ViewController: UIViewController {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(.red, for: .normal)
        
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        
        view.addSubview(toggleButton)
    }
    
    @objc func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
    
}
