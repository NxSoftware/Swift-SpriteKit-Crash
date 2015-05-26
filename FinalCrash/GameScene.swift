//
//  GameScene.swift
//  FinalCrash
//
//  Created by Steve Wilford on 23/05/2015.
//  Copyright (c) 2015 Steve Wilford. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    internal func spawnSprite() -> MySpriteNode {
        let sprite = MySpriteNode(color: UIColor.blueColor(), size: CGSizeMake(60.0, 40.0))
        sprite.position = CGPointMake(self.size.width * 0.5, self.size.height * 0.5)
        
        // NOTE: Deferring just the addChild call to the
        // caller of this function causes a different crash.
        self.addChild(sprite)
        
        return sprite
    }
    
}
