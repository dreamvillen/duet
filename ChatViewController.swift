//
//  ChatViewController.swift
//  Duet
//
//  Created by Ed Ngai on 11/30/15.
//  Copyright © 2015 Ed Ngai. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = name
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        self.navigationController?.navigationBar.titleTextAttributes = titleDict as! [String : AnyObject]
    }

}
