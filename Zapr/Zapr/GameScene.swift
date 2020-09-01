//
//  GameScene.swift
//  Zapr
//
//  Created by Jesse Ruiz on 9/1/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background")
        background.zPosition = -1
        background.blendMode = .replace
        addChild(background)
        
        let title = SKSpriteNode(imageNamed: "blastazapTitle")
        title.position = CGPoint(x: 0, y: 200)
        addChild(title)
        
        let strap = SKSpriteNode(imageNamed: "strap")
        strap.position = CGPoint(x: 0, y: 50)
        addChild(strap)
    }
}
