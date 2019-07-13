//
//  GameScene.swift
//  MineSweeper
//
//  Created by Daimen Ambers on 6/20/19.
//  Copyright © 2019 Daimen Ambers. All rights reserved.
//

import SpriteKit
import GameplayKit
import Foundation


class GameScene: SKScene {
    //MARK: Variabales
    enum State {
        case Waiting
        case GameOver
        case Win
        case Playing
    }
    
//    var flagsLbL: NSTextField = NSTextField()
//    var timerLbl: NSTextField = NSTextField()
    var timer = Timer()
    var seconds = 0
    var flags = 0
    let tileSize = 40
    let numOfMines = 50
    let numHorizontalTiles = 13
    let numVerticalTiles = 19
    var state = State.Waiting
    var data: [Bool] = Array(repeating: false, count: 19*13)
    var tiles: [Tile] =[]
    var safe: Int = 0
    

    private var label: SKLabelNode?
    
    override func didMove(to view: SKView) {
        
    }


    func touchDown(atPoint pos : CGPoint) {

    }

    func touchMoved(toPoint pos : CGPoint) {

    }

    func touchUp(atPoint pos : CGPoint) {

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }


    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
