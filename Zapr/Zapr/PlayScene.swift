//
//  PlayScene.swift
//  Zapr
//
//  Created by Jesse Ruiz on 9/1/20.
//  Copyright © 2020 Jesse Ruiz. All rights reserved.
//

import UIKit
import SpriteKit

class PlayScene: SKScene {
    
    // MARK: - Properties
    let player = SKSpriteNode(imageNamed: "player")

    override func didMove(to view: SKView) {
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        let background = SKSpriteNode(imageNamed: "background")
        background.zPosition = -2
        background.blendMode = .replace
        addChild(background)
        
        if let particles = SKEmitterNode(fileNamed: "starfield") {
        particles.position = CGPoint(x: 1080, y: 0)
        particles.advanceSimulationTime(60)
        addChild(particles)
        }
        
        player.name = "player"
        player.position.x = -700
        player.zPosition = 1
        addChild(player)
    }
    
    func movePlayer(_ delta: CGPoint) {
        player.position.y -= delta.y * 2
        
        if player.position.y < -500 {
            player.position.y = -500
        } else if player.position.y > 500 {
            player.position.y = 500
        }
    }
}
