//
//  ViewController.swift
//  TestOne
//
//  Created by Slava on 3/26/18.
//  Copyright © 2018 Slava. All rights reserved.
//

import UIKit

struct FieldPosition {
    let x : Int
    let y : Int
}

class ViewController: UIViewController {
    
    var field = FieldView()
    


    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
     
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect(x: 5, y: 5, width: 200, height: 200)
        field = FieldView(frame: frame)
        self.view.addSubview(field)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

