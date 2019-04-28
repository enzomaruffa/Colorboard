//
//  UIColorExtension.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 26/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

extension UIColor {
    
    func toColor(_ color: UIColor, percentage: CGFloat) -> UIColor {
        let percentage = max(min(percentage, 100), 0) / 100
        switch percentage {
        case 0: return self
        case 1: return color
        default:
            var (r1, g1, b1, a1): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
            var (r2, g2, b2, a2): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
            guard self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1) else { return self }
            guard color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2) else { return self }
            
            return UIColor(red: CGFloat(r1 + (r2 - r1) * percentage),
                           green: CGFloat(g1 + (g2 - g1) * percentage),
                           blue: CGFloat(b1 + (b2 - b1) * percentage),
                           alpha: CGFloat(a1 + (a2 - a1) * percentage))
        }
    }
    
    func borderByBackground() -> UIColor {
        return self == #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) ?  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func distanceToColor(_ color: UIColor) -> Double {
        var (r1, g1, b1, a1): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        var (r2, g2, b2, a2): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        guard self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1) else { return -1 }
        guard color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2) else { return -1 }
        
        return sqrt(Double((2 * pow(r1 - r2, 2)
                        + 4 * pow(g1 - g2, 2)
                        + 3 * pow(b1 - b2, 2)) / 9 ))
    }
    
    static func randomColor() -> UIColor {
        return UIColor(red: CGFloat(Float.random(in: 0...1)),
                green: CGFloat(Float.random(in: 0...1)),
                blue: CGFloat(Float.random(in: 0...1)),
                alpha: CGFloat(Float.random(in: 0...1)))
    }
    
    func opposite() -> UIColor {
        var (r1, g1, b1, a1): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        guard self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1) else { return self }
        
        return UIColor(red: CGFloat(1 - r1),
                       green: CGFloat(1 - g1),
                       blue: CGFloat(1 - b1),
                       alpha: CGFloat(a1))
    }
    
    func shuffled() -> UIColor {
        var (r1, g1, b1, a1): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        guard self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1) else { return self }
        
        var colorsList = [r1, g1, b1]
        colorsList.shuffle()
        
        return UIColor(red: CGFloat(colorsList[0]),
                       green: CGFloat(colorsList[1]),
                       blue: CGFloat(colorsList[2]),
                       alpha: CGFloat(a1))
    }
    
    func lighten(amount : CGFloat) -> UIColor {
        var (r1, g1, b1, a1): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        guard self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1) else { return self }
        
        return UIColor(red: CGFloat(r1 + amount >= 1 ? 1 : r1 + amount),
                       green: CGFloat(g1 + amount >= 1 ? 1 : g1 + amount),
                       blue: CGFloat(b1 + amount >= 1 ? 1 : b1 + amount),
                       alpha: CGFloat(a1))
    }
    
    func darken(amount : CGFloat) -> UIColor {
        var (r1, g1, b1, a1): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        guard self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1) else { return self }
        
        return UIColor(red: CGFloat(r1 - amount <= 0 ? 0 : r1 - amount),
                       green: CGFloat(g1 - amount <= 0 ? 0 : g1 - amount),
                       blue: CGFloat(b1 - amount <= 0 ? 0 : b1 - amount),
                       alpha: CGFloat(a1))
    }
}
