//
//  ViewController.swift
//  TestOne
//
//  Created by Slava on 3/26/18.
//  Copyright © 2018 Slava. All rights reserved.
//

import UIKit

enum FieldPosition {
    case x(Int)
}

class ViewController: UIViewController {
    
    
    
    let size : CGFloat = 100
    var arrayCell = [FieldCellView]()
    var grid = 5

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        for (value,cell) in arrayCell.enumerated() {
            
            let width = view.frame.size.width / CGFloat(grid)
            let offSet = width * CGFloat(value)
            let frame = CGRect(x: offSet, y: 0, width: width, height: width)
            cell.frame = frame
            
        }
        
//        let x = view.bounds.size.width/2 - CGFloat(size/2)
//        let y = view.bounds.size.height/2 - CGFloat(size/2)
//
//        cell.frame = CGRect(x: x, y: y, width: CGFloat(size), height: CGFloat(size))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for value in 0..<grid {
            
            let width = view.frame.size.width / CGFloat(grid)
            
            let offSet = width * CGFloat(value)
            let frameCell = CGRect(x: offSet, y: 0, width: width, height: size)
            let cell = FieldCellView(frame: frameCell, position: FieldPosition.x(value))
            arrayCell.append(cell)
            view.addSubview(cell)
            
            
        }
//            let xPosition = (view.frame.size.width/2 - CGFloat(size/2))
//            let yPosition = (view.frame.size.height/2 - CGFloat(size/2))
//
//            let frame = CGRect(x: xPosition, y: yPosition, width: CGFloat(size), height: CGFloat(size))
//            cell = FieldCellView(frame: frame)
//
//
//
//        self.view.addSubview(cell)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

