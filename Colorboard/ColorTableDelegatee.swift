//
//  ColorTableDelegatee.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 26/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class ColorTableDelegatee : NSObject, UITableViewDelegate, UITableViewDataSource {
    
    private var elementList : [Element]
    
    init(elements : [Element]) {
        elementList = elements
        print(elementList)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elementList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellColor", for: indexPath) as! ColorCell
        
        cell.setupCell(element: elementList[indexPath.row])
        
        return cell
    }
    
}
