//
//  LocationViewController.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 27/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController, ElementPicker {

    weak var colorView : ColorsViewController?
    var delegatee : ColorTableDelegatee!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView = children.first as? ColorsViewController

        // Do any additional setup after loading the view.
    }
    
    func didSelect(element: Element) {
        colorView?.applyElement(element: element)
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
