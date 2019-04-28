//
//  ViewController.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 24/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var instructionsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        instructionsTextView.flashScrollIndicators()
    }


}

