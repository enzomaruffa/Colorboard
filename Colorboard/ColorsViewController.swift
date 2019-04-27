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
    
    var player = Player.getInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        smallCircle.backgroundColor = player.goldColor
        smallCircle.layer.borderColor = UIColor.white.cgColor
        
        let durationColor : Double = 0.8 / Double(player.colorList.count)
        paintAnimation(current: 0, duration: durationColor)
        
        bigCircle.layer.borderColor = UIColor.black.cgColor

        // Do any additional setup after loading the view.
    }
    
    func paintAnimation (current : Int, duration : Double) {
        //animate
        
        UIView.animate(withDuration: duration, animations: {
            self.setBigCircleColor(color: self.player.colorList[current])
        }, completion: { (_) in
            
            if current + 1 == self.player.colorList.count {
                return
            }
            
            self.paintAnimation(current: current+1, duration: duration)
        })
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
    
    public func applyElement(element : Element) {
        if element.isTypeMix {
            print("Mixing colors")
            mixBigCircleColor(color: element.color, percentage: 50)
        } else {
            setBigCircleColor(color: element.color)
        }
        
        player.addColorToPlayer(color: bigCircle.backgroundColor!)
    }
    
    public func mixBigCircleColor(color: UIColor, percentage: CGFloat) {
        setBigCircleColor(color: (bigCircle.backgroundColor?.toColor(color
            , percentage: percentage))!)
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
