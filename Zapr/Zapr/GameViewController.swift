//
//  GameViewController.swift
//  Zapr
//
//  Created by Jesse Ruiz on 9/1/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    // MARK: - Properties
    var gameScene: SKScene? {
        return (self.view as! SKView).scene
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        guard let press = presses.first else { return }
        
        if press.type == .menu {
            super.pressesBegan(presses, with: event)
        } else {
            gameScene?.pressesBegan(presses, with: event)
        }
    }
}
