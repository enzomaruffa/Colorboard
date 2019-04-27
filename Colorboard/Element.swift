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
    
    private static var initialColorsList : [Element] = createInitialColors() // pick color
    
    private static var flowersList : [Element] = createFlowers() // garden
    private static var forageList : [Element] = createForage()
    
    private static var paracelsusList : [Element] = createParacelsus()
    private static var flamelList : [Element] = createFlamel()
    
    
    private static func createInitialColors() -> [Element] {
        var list : [Element] = []
        
        let red = Element("Red", "(R)GB", #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1), false)
        list.append(red)
        
        let green = Element("Green", "R(G)B", #colorLiteral(red: 0, green: 1, blue: 0, alpha: 1), false)
        list.append(green)
        
        let blue = Element("Blue", "RG(B)", #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1), false)
        list.append(blue)
        
        return list
    }
    
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
        
        let camelia = Element("Camelia", "", #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), true)
        list.append(camelia)
        
        let clover = Element("Clover", "", #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), true)
        list.append(clover)
        
        return list
    }
    
    
    private static func createForage() -> [Element] {
        var list : [Element] = []
        
        let red = Element("Red", "(R)GB", #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1), false)
        list.append(red)
        
        let green = Element("Green", "R(G)B", #colorLiteral(red: 0, green: 1, blue: 0, alpha: 1), false)
        list.append(green)
        
        let blue = Element("Blue", "RG(B)", #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1), false)
        list.append(blue)
        
        return list
    }
    
    private static func createParacelsus() -> [Element] {
        var list : [Element] = []
        
        let red = Element("Red", "(R)GB", #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1), false)
        list.append(red)
        
        let green = Element("Green", "R(G)B", #colorLiteral(red: 0, green: 1, blue: 0, alpha: 1), false)
        list.append(green)
        
        let blue = Element("Blue", "RG(B)", #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1), false)
        list.append(blue)
        
        return list
    }
    
    private static func createFlamel() -> [Element] {
        var list : [Element] = []
        
        let red = Element("Red", "(R)GB", #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1), false)
        list.append(red)
        
        let green = Element("Green", "R(G)B", #colorLiteral(red: 0, green: 1, blue: 0, alpha: 1), false)
        list.append(green)
        
        let blue = Element("Blue", "RG(B)", #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1), false)
        list.append(blue)
        
        return list
    }
    
    private init(_ name : String, _ description : String, _ color : UIColor, _ isTypeMix : Bool) {
        self.name = name
        self.description = description
        self.color = color
        self.isTypeMix = isTypeMix
    }
    
    public static func getInitialColors() -> [Element] {
        return initialColorsList
    }
    
    public static func getFlowers() -> [Element] {
        return flowersList
    }
    
    public static func getRandomFlowers(amount : Int) -> [Element] {
        let flowersAmount = amount > flowersList.count ? flowersList.count : amount
        
        var flowersListCopy = flowersList.shuffled()
        var randomFlowersList : [Element] = []
        
        for _ in 0...flowersAmount {
            randomFlowersList.append(flowersListCopy.popLast()!)
        }
        
        return randomFlowersList
    }
    
}
