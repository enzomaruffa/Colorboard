//
//  ColorsView.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 25/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class ColorsView: UIView {
    
    var path: UIBezierPath!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.darkGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        //self.createRectangle()
        
        // Specify the fill color and apply it to the path.
        //UIColor.orange.setFill()
        //path.fill()
        
        // Specify a border (stroke) color.
        //UIColor.black.setStroke()
        //path.stroke()
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func createRectangle() {
        // Initialize the path.
        path = UIBezierPath.init(rect: CGRect(origin: CGPoint(x: self.frame.minX, y: self.frame.minY), size: CGSize(width: self.frame.width, height: self.frame.height)))
    }

}
