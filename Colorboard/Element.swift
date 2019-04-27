//
//  Element.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 26/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

//Flowers reference: https://fr.dreamstime.com/votre-guide-jardin-fleurs-les-plus-populaires-du-principal-infographic-image119694056

//Mushrooms reference: https://www.123rf.com/photo_56989965_stock-vector-colorful-forest-wild-collection-of-assorted-edible-mushrooms-and-toadstools-with-names-in-cartoon-st.html
//Also: https://i.pinimg.com/474x/e4/4c/86/e44c86ed664c938b39ae97dfed5d2d4b--french-dictionary-french-colors.jpg

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
        
        let porsini = Element("Porsini", "", #colorLiteral(red: 0.5867403746, green: 0.03480042145, blue: 0.02191970125, alpha: 1), true)
        list.append(porsini)
        
        let chanterele = Element("Chanterele", "", #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), true)
        list.append(chanterele)
        
        let shitake = Element("Shitake", "", #colorLiteral(red: 0.7973647714, green: 0.4608165622, blue: 0.2528178394, alpha: 1), true)
        list.append(shitake)
        
        let lactariousIndigo = Element("Lactarius Indigo", "", #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), true)
        list.append(lactariousIndigo)
        
        let amanitaCaesarea = Element("Amanita Caesarea", "", #colorLiteral(red: 1, green: 0.4261223674, blue: 0, alpha: 1), true)
        list.append(amanitaCaesarea)
        
        let truffle = Element("Truffle", "", #colorLiteral(red: 0.3642567992, green: 0.2104968131, blue: 0.1169642732, alpha: 1), true)
        list.append(truffle)
        
        let hussulePalomet = Element("Hussule Palomet", "", #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), true)
        list.append(hussulePalomet)
        
        let lactaireVisqueux = Element("Lactaire Visqueux", "", #colorLiteral(red: 0.4077236056, green: 0.8266885877, blue: 0.716896534, alpha: 1), true)
        list.append(lactaireVisqueux)
        
        return list
    }
    
    private static func createParacelsus() -> [Element] {
        var list : [Element] = []
        
        let realgar = Element("Realgar", "", #colorLiteral(red: 0.8795756698, green: 0.01044942625, blue: 0.0002956551616, alpha: 1), true)
        list.append(realgar)
        
        let pyrites = Element("Pyrites", "", #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), true)
        list.append(pyrites)
        
        let azurite = Element("Azurite", "", #colorLiteral(red: 0.144416213, green: 0.09417634457, blue: 0.4225419462, alpha: 1), true)
        list.append(azurite)
        
        let haematite = Element("Haematite", "", #colorLiteral(red: 0.1169488803, green: 0.11697606, blue: 0.1169452891, alpha: 1), true)
        list.append(haematite)
        
        let ironOxide = Element("Iron Oxide", "", #colorLiteral(red: 1, green: 0.1287437081, blue: 0, alpha: 1), true)
        list.append(ironOxide)
        
        let tutia = Element("Tutia", "", #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1), true)
        list.append(tutia)
        
        let malachite = Element("Malachite", "", #colorLiteral(red: 0, green: 0.5893106461, blue: 0.221973151, alpha: 1), true)
        list.append(malachite)
        
        let aquaRegia = Element("Aqua Regia", "", #colorLiteral(red: 0.4745098039, green: 0.7843137255, blue: 0.768627451, alpha: 1), true)
        list.append(aquaRegia)
        
        return list
    }
    
    private static func createFlamel() -> [Element] {
        var list : [Element] = []
        
        let sulphur = Element("Sulphur", "", #colorLiteral(red: 0.6941176471, green: 0.6470588235, blue: 0.2078431373, alpha: 1), true)
        list.append(sulphur)
        
        let mercury = Element("Mercury", "", #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1), true)
        list.append(mercury)
        
        let salt = Element("Salt", "", #colorLiteral(red: 0.894503653, green: 0.8946537971, blue: 0.8944838643, alpha: 1), true)
        list.append(salt)
        
        let lead = Element("Lead", "", #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), true)
        list.append(lead)
        
        let iron = Element("Iron", "", #colorLiteral(red: 0.6039215686, green: 0.5098039216, blue: 0.4352941176, alpha: 1), true)
        list.append(iron)
        
        let philosopherElixir = Element("Life Elixir", "", #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1), true)
        list.append(philosopherElixir)

        let emerald = Element("Emerald", "", #colorLiteral(red: 0.02837203629, green: 0.7524441481, blue: 0.581971705, alpha: 1), true)
        list.append(emerald)
        
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
    
    public static func getForage() -> [Element] {
        return forageList
    }
    
    public static func getRandomForage(amount : Int) -> [Element] {
        let forageAmount = amount > forageList.count ? forageList.count : amount
        
        var forageListCopy = forageList.shuffled()
        var randomForageList : [Element] = []
        
        for _ in 0...forageAmount {
            randomForageList.append(forageListCopy.popLast()!)
        }
        
        return randomForageList
    }
    
    public static func getParacelsus() -> [Element] {
        return paracelsusList
    }
    
    public static func getRandomParacelsus(amount : Int) -> [Element] {
        let paracelsusAmount = amount > paracelsusList.count ? paracelsusList.count : amount
        
        var paracelsusListCopy = paracelsusList.shuffled()
        var randomParacelsusList : [Element] = []
        
        for _ in 0...paracelsusAmount {
            randomParacelsusList.append(paracelsusListCopy.popLast()!)
        }
        
        return randomParacelsusList
    }
    
    public static func getFlamel() -> [Element] {
        return flamelList
    }
    
    public static func getRandomFlamel(amount : Int) -> [Element] {
        let flamelAmount = amount > flamelList.count ? flamelList.count : amount
        
        var flamelListCopy = flamelList.shuffled()
        var randomFlamelList : [Element] = []
        
        for _ in 0...flamelAmount {
            randomFlamelList.append(flamelListCopy.popLast()!)
        }
        
        return randomFlamelList
    }
    
    
    
}
