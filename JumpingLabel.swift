//
//  JumpingLabel.swift
//  JumpingLabel
//
//  Created by CGL on 20/8/2018.
//

import UIKit

public class JumpingLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = .repeat
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
