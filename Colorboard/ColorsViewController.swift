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
        
        
        smallCircle.backgroundColor = .white
        smallCircle.layer.borderColor = UIColor.black.cgColor
        bigCircle.backgroundColor = .white
        bigCircle.layer.borderColor = UIColor.black.cgColor

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print(self.view.frame)
        //let view = ColorsView(frame: self.view.frame)
        //self.view.addSubview(view)
        
        var radius = bigCircle.frame.height * 0.5
        bigCircle.layer.cornerRadius = radius
        bigCircle.layer.borderWidth = 2
        
        radius = smallCircle.frame.height * 0.5
        smallCircle.layer.cornerRadius = radius
        smallCircle.layer.borderWidth = 2
        
    }
    
    public func setBigCircleColor(color: UIColor) {
        bigCircle.backgroundColor = color
        bigCircle.layer.borderColor = color.borderByBackground().cgColor
    }
    
    public func setSmallCircleColor(color: UIColor) {
        smallCircle.backgroundColor = color
        smallCircle.layer.borderColor = color.borderByBackground().cgColor
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
