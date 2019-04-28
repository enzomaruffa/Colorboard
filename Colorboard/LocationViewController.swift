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
        messageBox(messageTitle: element.name, messageAlert: element.description, messageBoxStyle: .alert, alertActionStyle: .default, completionHandler: {})
    }
    
    func messageBox(messageTitle: String, messageAlert: String, messageBoxStyle: UIAlertController.Style, alertActionStyle: UIAlertAction.Style, completionHandler: @escaping () -> Void)
    {
        let alert = UIAlertController(title: messageTitle, message: messageAlert, preferredStyle: messageBoxStyle)
        
        let okAction = UIAlertAction(title: "Ok", style: alertActionStyle) { _ in
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
