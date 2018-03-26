//
//  FieldCellView.swift
//  TestOne
//
//  Created by Slava on 3/26/18.
//  Copyright © 2018 Slava. All rights reserved.
//

import UIKit

class FieldCellView: UIView {
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.gray
        
        let size = 0.9*bounds.size.width
        let x = bounds.size.width/2 - size/2
        let y = bounds.size.height/2 - size/2
        
        let frameButton = CGRect(x: x, y: y, width: size, height: size)
        let button = UIButton(frame: frameButton)
        
        button.backgroundColor = UIColor.blue
        button.setTitle("Go", for: .normal)
        button.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
        addSubview(button)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
 
    
    @objc func touchButton() {
    print("GO")
    }
}
