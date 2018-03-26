//
//  FieldCellView.swift
//  TestOne
//
//  Created by Slava on 3/26/18.
//  Copyright © 2018 Slava. All rights reserved.
//

import UIKit

class FieldCellView: UIView {
    
    var position: FieldPosition
    
    var button = UIButton()
    
    init(frame: CGRect, position: FieldPosition) {
        self.position = position
        super.init(frame: frame)
        
        backgroundColor = UIColor.gray
        
        let size = 0.9*bounds.size.width
        let x = bounds.size.width/2 - size/2
        let y = bounds.size.height/2 - size/2
        
        let frameButton = CGRect(x: x, y: y, width: size, height: size)
         button.frame = frameButton
        
        button.backgroundColor = UIColor.blue
        button.setTitle("Go", for: .normal)
        button.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
        addSubview(button)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let size = 0.9*bounds.size.width
        let x = bounds.size.width/2 - size/2
        let y = bounds.size.height/2 - size/2
        
        let frameButton = CGRect(x: x, y: y, width: size, height: size)
         button.frame = frameButton
        
        
        
    }
    
    @objc func touchButton() {
        
         print("GO  to \(position.x), \(position.y)")
        
    
    }
}
