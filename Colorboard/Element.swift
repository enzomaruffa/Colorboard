//
//  Element.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 26/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

//Flowers reference: https://fr.dreamstime.com/votre-guide-jardin-fleurs-les-plus-populaires-du-principal-infographic-image119694056

import UIKit

class Element {
    
    public var name : String
    public var color : UIColor
    public var description : String
    public var isTypeMix : Bool
    
    private static var flowersList : [Element] = createFlowers()
    
    private static func createFlowers() -> [Element] {
        var list : [Element] = []
        
        let rose = Element("Rose", "Indeed, it's red!", #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), true)
        list.append(rose)
        
        let tulip = Element("Tulips", "", #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), true)
        list.append(tulip)
        
        let sunflower = Element("Sunflower", "", #colorLiteral(red: 0.9699543118, green: 0.954395473, blue: 0, alpha: 1), true)
        list.append(sunflower)
        
        let dahlia = Element("Dahlia", "", #colorLiteral(red: 0.5693798714, green: 0.1380042605, blue: 1, alpha: 1), true)
        list.append(dahlia)
        
        let iris = Element("Iris", "", #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), true)
        list.append(iris)
        
        let magnolia = Element("Magnolia", "", #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), true)
        list.append(magnolia)
        
        let camelia = Element("Camelia", "", #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), true)
        list.append(camelia)
        
        let clover = Element("Clover", "", #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), true)
        list.append(clover)
        
        return list
    }
    
    private init(_ name : String, _ description : String, _ color : UIColor, _ isTypeMix : Bool) {
        self.name = name
        self.description = description
        self.color = color
        self.isTypeMix = isTypeMix
    }
    
    public static func getFlowersList() -> [Element] {
        return flowersList
    }
    
}