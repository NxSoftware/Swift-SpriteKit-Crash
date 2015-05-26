//
//  GameViewController.swift
//  FinalCrash
//
//  Created by Steve Wilford on 23/05/2015.
//  Copyright (c) 2015 Steve Wilford. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scene = GameScene(size: self.view.bounds.size)
        self.scene.scaleMode = .AspectFill
        
        let skView = self.view as! SKView
        skView.presentScene(self.scene)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.spawn()
    }
    
    private func spawn() {
        // NOTE: Removing this pointless loop prevents the crashes.
        // But it would be useful to be able to spawn more than one 
        // sprite dynamically (i.e. for _ in 1...n)
        for _ in 1...1 {
            let sprite = self.scene.spawnSprite()
            
            // NOTE: Removing this setter prevents the crashes
            sprite.someState = 1
            
            // NOTE: Replacing the loop body with the code below
            // prevents the crashes.
            /*
            let sprite = MySpriteNode(color: UIColor.blueColor(), size: CGSizeMake(60.0, 40.0))
            sprite.position = CGPointMake(self.scene.size.width * 0.5, self.scene.size.height * 0.5)
            
            self.scene.addChild(sprite)
            
            sprite.someState = 1
            */
        }
    }

    @IBAction func pauseButtonTapped(sender: AnyObject) {
        self.scene.paused = true
    }
}
