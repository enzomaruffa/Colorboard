//
//  ElementProtocol.swift
//  Colorboard
//
//  Created by Enzo Maruffa Moreira on 26/04/19.
//  Copyright © 2019 Enzo Maruffa Moreira. All rights reserved.
//

import Foundation

protocol ElementPicker: class {
    func didSelect(element: Element)
    func didSelectInfo(element: Element)
}
