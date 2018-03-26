//
//  FieldView.swift
//  TestOne
//
//  Created by Slava on 3/26/18.
//  Copyright © 2018 Slava. All rights reserved.
//

import UIKit

class FieldView: UIView {
    
    var arrayCell = [FieldCellView]()
    let size = 10
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        for x in 0..<size {
            for y in 0..<size {
                let width = bounds.size.width / CGFloat(size)
                let offSetX = CGFloat(x) * width
                let offSetY = CGFloat(y) * width
                let frameCell = CGRect(x: offSetX, y: offSetY, width: width, height: width)
                let cell = FieldCellView(frame: frameCell, position: FieldPosition(x: x, y: y))
                arrayCell.append(cell)
                self.addSubview(cell)
            }
        }
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
