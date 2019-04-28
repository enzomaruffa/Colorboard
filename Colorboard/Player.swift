//
//  Player.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 25/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class Player {
    
    var colorList : [UIColor] = [UIColor.white]
    var goldColor : UIColor =  UIColor.randomYellowColor()
    var endingGame = false
    
    private static var playerInstance = Player()
    
    private init() {
        
    }
    
    public static func getInstance() -> Player {
        return playerInstance
    }
    
    public func addColorToPlayer(color : UIColor) {
        colorList.append(color)
    }
    
    public func resetColors() {
        colorList = [UIColor.white]
        goldColor = UIColor.randomYellowColor()
    }
    
    public func getCurrentColor() -> UIColor {
        return colorList.last!
    }
}
