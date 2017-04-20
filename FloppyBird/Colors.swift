//
//  Colors.swift
//  FloppyBird
//
//  Created by Jeremy Novak on 9/26/16.
//  Copyright © 2016 SpriteKit Book. All rights reserved.
//


import SpriteKit

class Colors {
    
    class var sky:Int           { return 0x4ba3ff }
    class var score:Int         { return 0xffffff }
    class var scoreboard:Int    { return 0x000000 }
    class var message:Int       { return 0xffd746 }
    class var flash:Int         { return 0x000000 }
    
    
    class func colorFrom(rgb: Int) -> SKColor {
        return SKColor(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                       green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                       blue: CGFloat(rgb & 0x0000FF) / 255.0,
                       alpha: 1.0)
    }
}
