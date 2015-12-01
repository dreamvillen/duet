//
//  EventDetailsPage.swift
//  Duet
//
//  Created by Ed Ngai on 11/17/15.
//  Copyright © 2015 Ed Ngai. All rights reserved.
//

import UIKit

class EventDetailsPage: UIViewController {
    
    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var venueLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var mapImage: UIImageView!
    
    var imageName = ""
    var artist = ""
    var venue = ""
    var date = ""
    var time = ""
    var mapImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        self.navigationController?.navigationBar.titleTextAttributes = titleDict as! [String : AnyObject]

        
        self.eventImage.image = UIImage(named: imageName)
        self.artistLabel.text = artist
        self.venueLabel.text = venue
        self.dateLabel.text = date
        self.timeLabel.text = time
        self.mapImage.image = UIImage(named: mapImageName)
        
    }

}
