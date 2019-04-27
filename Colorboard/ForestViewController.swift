//
//  ForestViewController.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 26/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class ForestViewController: UIViewController, ElementPicker {

    @IBOutlet weak var colorCirclesView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    weak var colorView : ColorsViewController?
    
    var forageAmount = Int.random(in: 3 ... 4)
    var forageItens : [Element]!
    var delegatee : ColorTableDelegatee!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView = children.first as? ColorsViewController
        
        forageItens = Element.getRandomForage(amount: forageAmount)
        
        delegatee = ColorTableDelegatee(elements: forageItens)
        delegatee.delegate = self
        
        tableView.delegate = delegatee
        tableView.dataSource = delegatee
        
        tableView.register(UINib(nibName: String(describing: ColorCell.self), bundle: nil), forCellReuseIdentifier: "cellColor")

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
