//
//  ColorCell.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 26/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import UIKit

class ColorCell: UITableViewCell {
 
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            UIView.animate(withDuration: 0.2, animations: {
                self.backgroundColor = self.colorView.backgroundColor
            }) { (_) in
                UIView.animate(withDuration: 0.2, animations: {
                    self.backgroundColor = .white
                })
            }
        }

        // Configure the view for the selected state
    }
    
    public func setupCell(element : Element) {
        titleLabel.text = element.name
        
        if element.isTypeMix {
            let radius = colorView.frame.height * 0.5
            colorView.layer.cornerRadius = radius
            colorView.layer.borderWidth = 0
        }
        
        colorView.backgroundColor = element.color
    }
}
