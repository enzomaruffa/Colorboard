//
//  ViewController.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 24/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = children.first as! ColorsViewController
        vc.setSmallCircleColor(color: #colorLiteral(red: 1, green: 0.7913135886, blue: 0, alpha: 1))
        vc.setBigCircleColor(color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        
        // Do any additional setup after loading the view.
    }


}

