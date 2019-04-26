//
//  ColorsViewController.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 24/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController {

    @IBOutlet weak var bigCircle: UIView!
    @IBOutlet weak var smallCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print(self.view.frame)
        //let view = ColorsView(frame: self.view.frame)
        //self.view.addSubview(view)
        
        var radius = bigCircle.frame.height * 0.5
        bigCircle.layer.cornerRadius = radius
        bigCircle.layer.borderWidth = 2
        setBigCircleColor(color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        
        radius = smallCircle.frame.height * 0.5
        smallCircle.layer.cornerRadius = radius
        smallCircle.layer.borderWidth = 2
        setSmallCircleColor(color: #colorLiteral(red: 1, green: 0.7913135886, blue: 0, alpha: 1))
        
    }
    
    public func setBigCircleColor(color: UIColor) {
        if color == #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) {
            bigCircle.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            bigCircle.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else {
            bigCircle.backgroundColor = color
            bigCircle.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    public func setSmallCircleColor(color: UIColor) {
        print(color.cgColor)
        if color == #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) {
            smallCircle.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            smallCircle.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else {
            smallCircle.backgroundColor = color
            smallCircle.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
