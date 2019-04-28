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
    
    private static var goetheList : [Element] = createGoethe()
    private static var hermesList : [Element] = createHermes()
    
    
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
        
        let tulip = Element("Tulips", "Pretty pinky!", #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), true)
        list.append(tulip)
        
        let sunflower = Element("Sunflower", "It aint't goldflower, watch out", #colorLiteral(red: 0.9699543118, green: 0.954395473, blue: 0, alpha: 1), true)
        list.append(sunflower)
        
        let dahlia = Element("Dahlia", "Yes, Dahlia! The prettiest of them all", #colorLiteral(red: 0.5693798714, green: 0.1380042605, blue: 1, alpha: 1), true)
        list.append(dahlia)
        
        let iris = Element("Iris", "Despite the name, no, it's not an eyeflower", #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), true)
        list.append(iris)
        
        let camelia = Element("Camelia", "Cameleon? Nop", #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), true)
        list.append(camelia)
        
        let clover = Element("Clover", "Maybe it has four leafs!", #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), true)
        list.append(clover)
        
        return list
    }
    
    
    private static func createForage() -> [Element] {
        var list : [Element] = []
        
        let porsini = Element("Porsini", "People say they are kinda tasty. I'm not so sure...", #colorLiteral(red: 0.5867403746, green: 0.03480042145, blue: 0.02191970125, alpha: 1), true)
        list.append(porsini)
        
        let shitake = Element("Shitake", "You should try making a risotto out of this one", #colorLiteral(red: 0.7973647714, green: 0.4608165622, blue: 0.2528178394, alpha: 1), true)
        list.append(shitake)
        
        let lactariousIndigo = Element("Lactarius Indigo", "Not sure what to write, so: easter egg!", #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), true)
        list.append(lactariousIndigo)
        
        let amanitaCaesarea = Element("Amanita Caesarea", "'Laranjinha`'", #colorLiteral(red: 1, green: 0.4261223674, blue: 0, alpha: 1), true)
        list.append(amanitaCaesarea)
        
        let truffle = Element("Truffle", "Warning: no cherry inside", #colorLiteral(red: 0.3642567992, green: 0.2104968131, blue: 0.1169642732, alpha: 1), true)
        list.append(truffle)
        
        let hussulePalomet = Element("Hussule Palomet", "Is this a mushroom? What the frickles is this name!", #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), true)
        list.append(hussulePalomet)
        
        let lactaireVisqueux = Element("Lactaire Visqueux", "Oui", #colorLiteral(red: 0.4077236056, green: 0.8266885877, blue: 0.716896534, alpha: 1), true)
        list.append(lactaireVisqueux)
        
        return list
    }
    
    private static func createParacelsus() -> [Element] {
        var list : [Element] = []
        
        let realgar = Element("Realgar", "Targaryen?", #colorLiteral(red: 0.8795756698, green: 0.01044942625, blue: 0.0002956551616, alpha: 1), true)
        list.append(realgar)
        
        let pyrites = Element("Pyrites", "Pycelle?", #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), true)
        list.append(pyrites)
        
        let azurite = Element("Azurite", "Azor Azhai?", #colorLiteral(red: 0.144416213, green: 0.09417634457, blue: 0.4225419462, alpha: 1), true)
        list.append(azurite)
        
        let haematite = Element("Haematite", "Bloody hell!", #colorLiteral(red: 0.1169488803, green: 0.11697606, blue: 0.1169452891, alpha: 1), true)
        list.append(haematite)
        
        let ironOxide = Element("Iron Oxide", "Not stainless steel, as you can see", #colorLiteral(red: 1, green: 0.1287437081, blue: 0, alpha: 1), true)
        list.append(ironOxide)
        
        let tutia = Element("Tutia", "Tutti belle!", #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1), true)
        list.append(tutia)
        
        let malachite = Element("Malachite", "They say that it promotes healing! How cool is that!", #colorLiteral(red: 0, green: 0.5893106461, blue: 0.221973151, alpha: 1), true)
        list.append(malachite)
        
        let aquaRegia = Element("Aqua Regia", "As royal as it gets!", #colorLiteral(red: 0.4745098039, green: 0.7843137255, blue: 0.768627451, alpha: 1), true)
        list.append(aquaRegia)
        
        return list
    }
    
    private static func createFlamel() -> [Element] {
        var list : [Element] = []
        
        let sulphur = Element("Sulphur", "Definitely looks better than it smells", #colorLiteral(red: 0.6941176471, green: 0.6470588235, blue: 0.2078431373, alpha: 1), true)
        list.append(sulphur)
        
        let mercury = Element("Mercury", "Will it highlight gold for you?", #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1), true)
        list.append(mercury)
        
        let salt = Element("Salt", "I may be somewhat salty...", #colorLiteral(red: 0.894503653, green: 0.8946537971, blue: 0.8944838643, alpha: 1), true)
        list.append(salt)
        
        let lead = Element("Lead", "Heavy, ugly and with a cool name. Sounds like a hipopotamus", #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), true)
        list.append(lead)
        
        let iron = Element("Iron", "We have iron and iron oxide. Dangerous...", #colorLiteral(red: 0.6039215686, green: 0.5098039216, blue: 0.4352941176, alpha: 1), true)
        list.append(iron)
        
        let philosopherElixir = Element("Life Elixir", "Flamel lived a looong time driking this. Don't you dare taking a single drop of it away!", #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1), true)
        list.append(philosopherElixir)

        let emerald = Element("Emerald", "JS frameworks are the past. Use Rub- no, Emerald!", #colorLiteral(red: 0.02837203629, green: 0.7524441481, blue: 0.581971705, alpha: 1), true)
        list.append(emerald)
        
        return list
    }
    
    private static func createGoethe() -> [Element] {
        var list : [Element] = []
        
        let whiteningSolution = Element("Whitening Solution", "As simples as it can be", #colorLiteral(red: 0.894503653, green: 0.8946537971, blue: 0.8944838643, alpha: 1), true)
        list.append(whiteningSolution)
        
        let blackeningSolution = Element("Blackening Solution", "Also, as simple as it can be", #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), true)
        list.append(blackeningSolution)
        
        return list
    }
    
    private static func createHermes() -> [Element] {
        var list : [Element] = []
        
        let divineColor = Element("Divine Color", "Purple vibrates quite hard!", #colorLiteral(red: 0.5693798714, green: 0.1380042605, blue: 1, alpha: 1), true)
        list.append(divineColor)
        
        let heartColor = Element("Heart Color", "Why is the heart green? We should as Vishnu...", #colorLiteral(red: 0, green: 0.9799138904, blue: 0, alpha: 1), true)
        list.append(heartColor)
        
        let mundaneColor = Element("Mundane Color", "Red has some low vibrations...", #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1), true)
        list.append(mundaneColor)
        
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
        var flowersList = getFlowers().shuffled()
        
        let flowersAmount = amount > flowersList.count ? flowersList.count : amount
        
        var randomFlowersList : [Element] = []
        
        for _ in 0...flowersAmount {
            randomFlowersList.append(flowersList.popLast()!)
        }
        
        return randomFlowersList
    }
    
    public static func getForage() -> [Element] {
        return forageList
    }
    
    public static func getRandomForage(amount : Int) -> [Element] {
        var forageList = getForage().shuffled()
        
        let forageAmount = amount > forageList.count ? forageList.count : amount
        
        var randomForageList : [Element] = []
        
        for _ in 0...forageAmount {
            randomForageList.append(forageList.popLast()!)
        }
        
        return randomForageList
    }
    
    public static func getParacelsus() -> [Element] {
        return paracelsusList
    }
    
    public static func getRandomParacelsus(amount : Int) -> [Element] {
        var paracelsusList = getParacelsus().shuffled()
        
        let paracelsusAmount = amount > paracelsusList.count ? paracelsusList.count : amount
        
        var randomParacelsusList : [Element] = []
        
        for _ in 0...paracelsusAmount {
            randomParacelsusList.append(paracelsusList.popLast()!)
        }
        
        return randomParacelsusList
    }
    
    public static func getFlamel() -> [Element] {
        return flamelList
    }
    
    public static func getRandomFlamel(amount : Int) -> [Element] {
        var flamelList = getFlamel().shuffled()
        
        let flamelAmount = amount > flamelList.count ? flamelList.count : amount
        
        var randomFlamelList : [Element] = []
        
        for _ in 0...flamelAmount {
            randomFlamelList.append(flamelList.popLast()!)
        }
        
        return randomFlamelList
    }
    
    public static func getGoethe(playerColor: UIColor, targetColor: UIColor) -> [Element] {
        var goetheListCopy = goetheList
        
        let oppositeMiddleGroundColor = Element("Weird color", "It actually is the opposite of the gold color!", targetColor.opposite(), true)
        goetheListCopy.append(oppositeMiddleGroundColor)
        
        let shuffledColor1 = Element("Shuffled color", "Randomly generated using your current RGB values!", playerColor.shuffled(), true)
        goetheListCopy.append(shuffledColor1)
        
        let shuffledColor2 = Element("Shuffled color mixture", "Randomly generated using your current RGB values!", playerColor.shuffled(), false)
        goetheListCopy.append(shuffledColor2)
        
        let randomColor1 = Element("Random color", "As random as it can be", UIColor.randomColor(), true)
        goetheListCopy.append(randomColor1)
        
        let randomColor2 = Element("Random color #2", "As random as it can be too", UIColor.randomColor(), false)
        goetheListCopy.append(randomColor2)
        
        return goetheListCopy
    }
    
    public static func getRandomGoethe(playerColor: UIColor, targetColor: UIColor, amount : Int) -> [Element] {
        var goetheList = getGoethe(playerColor: playerColor, targetColor: targetColor).shuffled()
        
        let goetheAmount = amount > goetheList.count ? goetheList.count : amount
        
        var randomGoetheList : [Element] = []
        
        for _ in 0...goetheAmount {
            randomGoetheList.append(goetheList.popLast()!)
        }
        
        return randomGoetheList
    }
    
    public static func getHermes(playerColor: UIColor, targetColor: UIColor) -> [Element] {
        var hermesListCopy = hermesList
        
        let oppositeColor = Element("Opposite color", "It's the complimentary color! 2 principle...", playerColor.opposite(), false)
        hermesListCopy.append(oppositeColor)
        
        let randomColor1 = Element("All's elixir", "All changes aaaaall the time, it's so boring", UIColor.randomColor(), false)
        hermesListCopy.append(randomColor1)
        
        let lightenedColor = Element("Lightened color", "Your color, lighter! Harmony...", playerColor.lighten(amount: CGFloat(0.15)), true)
        hermesListCopy.append(lightenedColor)
        
        let darkenedColor = Element("Darkened color", "Your color, darker! Harmony...", playerColor.darken(amount: CGFloat(0.15)), true)
        hermesListCopy.append(darkenedColor)
        
        return hermesListCopy
    }
    
    public static func getRandomHermes(playerColor: UIColor, targetColor: UIColor, amount : Int) -> [Element] {
        var hermesList = getHermes(playerColor: playerColor, targetColor: targetColor).shuffled()
        
        let hermesAmount = amount > hermesList.count ? hermesList.count : amount
        
        var randomHermesList : [Element] = []
        
        for _ in 0...hermesAmount {
            randomHermesList.append(hermesList.popLast()!)
        }
        
        return randomHermesList
    }
    
    
    
    
}
