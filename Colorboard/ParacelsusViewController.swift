//
//  ParacelsusViewController.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 27/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class ParacelsusViewController: LocationViewController {

    @IBOutlet weak var colorsCircleView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var paracelsusItensAmount = Int.random(in: 2 ... 4)
    var paracelsusItens : [Element]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paracelsusItens = Element.getRandomParacelsus(amount: paracelsusItensAmount)
        
        delegatee = ColorTableDelegatee(elements: paracelsusItens)
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
