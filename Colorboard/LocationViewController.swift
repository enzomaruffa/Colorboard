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
    
    func didSelectInfo(element: Element) {
        messageBox(messageTitle: element.name, messageAlert: element.description, completionHandler: {})
    }
    
    func messageBox(messageTitle: String, messageAlert: String, completionHandler: @escaping () -> Void)
    {
        let alert = UIAlertController(title: messageTitle, message: messageAlert, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            completionHandler() // This will only get called after okay is tapped in the alert
        }
        
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
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
