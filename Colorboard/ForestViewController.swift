//
//  ForestViewController.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 26/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class ForestViewController: LocationViewController {

    @IBOutlet weak var colorCirclesView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var forageAmount = Int.random(in: 3 ... 4)
    var forageItens : [Element]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        forageItens = Element.getRandomForage(amount: forageAmount)
        
        delegatee = ColorTableDelegatee(elements: forageItens)
        delegatee.delegate = self
        
        tableView.delegate = delegatee
        tableView.dataSource = delegatee
        
        tableView.register(UINib(nibName: String(describing: ColorCell.self), bundle: nil), forCellReuseIdentifier: "cellColor")

        // Do any additional setup after loading the view.
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
