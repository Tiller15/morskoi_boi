//
//  ViewController.swift
//  TestOne
//
//  Created by Slava on 3/26/18.
//  Copyright © 2018 Slava. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    let size = 100
    var cell = FieldCellView()

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        let x = view.bounds.size.width/2 - CGFloat(size/2)
        let y = view.bounds.size.height/2 - CGFloat(size/2)
        
        cell.frame = CGRect(x: x, y: y, width: CGFloat(size), height: CGFloat(size))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let xPosition = (view.frame.size.width/2 - CGFloat(size/2))
        let yPosition = (view.frame.size.height/2 - CGFloat(size/2))
        
        let frame = CGRect(x: xPosition, y: yPosition, width: CGFloat(size), height: CGFloat(size))
        cell = FieldCellView(frame: frame)
       
        self.view.addSubview(cell)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

