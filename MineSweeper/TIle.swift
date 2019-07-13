//
//  TIle.swift
//  MineSweeper
//
//  Created by Daimen Ambers on 7/13/19.
//  Copyright © 2019 Daimen Ambers. All rights reserved.
//

import Foundation
import SpriteKit

class Tile {
    enum State {
        case Empty
        case Discovered
        case Flagged
        case BadFlag
        case ExplodedMine
        case Mine
        case FlaggedMine
    }
    //MARK: Variables
    let size = 40
    var x: Int
    var y: Int
    var state = State.Empty
    var minesAround = 0
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func renderEmpty(ctx: CGContext?) {
        let sizef = CGFloat(size)
        ctx?.saveGState()
    }
}
