//
//  NavigationController.swift
//  Duet
//
//  Created by Ed Ngai on 11/15/15.
//  Copyright © 2015 Ed Ngai. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationBar.barTintColor = UIColor(red:0.00, green:0.80, blue:0.84, alpha:1.0)
        self.navigationBar.tintColor = UIColor.whiteColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
