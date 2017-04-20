//
//  AIPlayer.swift
//  FloppyBird
//
//  Created by Jason Ma on 4/20/17.
//  Copyright © 2017 SpriteKit Book. All rights reserved.
//

import Foundation
import SpriteKit

class AIPlayer {
    class func play(logController: LogController, floppy: Floppy) {
        var foundLog = false;
        for node in logController.children {
            if let log = node as? Log {
                if log.logType == Log.LogType.bottom && log.position.x + log.size.width > floppy.position.x {
                    NSLog("\(log.logType)");
                    NSLog("\(log.size)");
                    NSLog("\(log.position)");
                    if (kDebug) {
                        log.setTint(tint: true);
                    }
                    let highestPointOfLog = Double(log.position.y) + Double(log.size.height / 2.0);
                    if (floppy.position.y < CGFloat(highestPointOfLog + 35)) {
                        floppy.fly();
                    }
                    foundLog = true;
                    break;
                }
            }
        }
        if (!foundLog && floppy.position.y < 200) {
            floppy.fly();
        }
    }
}
