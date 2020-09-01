//
//  ButtonNode.swift
//  Zapr
//
//  Created by Jesse Ruiz on 9/1/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import UIKit
import SpriteKit

class ButtonNode: SKSpriteNode {
    
    // MARK: - Properties
    var focusedImage: SKTexture!
    var unfocusedImage: SKTexture!
    
    override var canBecomeFocused: Bool {
        return true
    }
    
    // MARK: - Methods
    func setFocusedImage(named name: String) {
        focusedImage = SKTexture(imageNamed: name)
        unfocusedImage = self.texture!
        isUserInteractionEnabled = true
    }
    
    func didGainFocus() {
        texture = focusedImage
    }
    
    func didLoseFocus() {
        texture = unfocusedImage
    }

}
