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

    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background")
        background.zPosition = -2
        background.blendMode = .replace
        addChild(background)
    }
}
