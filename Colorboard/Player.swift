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
    var goldColor : UIColor =  #colorLiteral(red: 1, green: 0.7913135886, blue: 0, alpha: 1)
    
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
    }
    
    public func getCurrentColor() -> UIColor {
        return colorList.last!
    }
}
