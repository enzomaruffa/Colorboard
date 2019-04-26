//
//  Player.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 25/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import Foundation


class Player {
    
    private static var playerInstance = Player()
    
    private init() {
        
    }
    
    public static func getInstance() -> Player {
        return playerInstance
    }
    
}
