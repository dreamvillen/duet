//
//  EventPageViewController.swift
//  Duet
//
//  Created by Ed Ngai on 11/4/15.
//  Copyright © 2015 Ed Ngai. All rights reserved.
//

import UIKit

class EventPageViewController: UIViewController {
    
    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var search: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Set Toolbar image
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 38, height: 38))
        imageView.contentMode = .ScaleAspectFit
        let image = UIImage(named: "Duet.png")
        imageView.image = image
        navigationItem.titleView = imageView
        
        //Vertical Scroll bar off
        self.scrollView.showsVerticalScrollIndicator = false
        
        /*
        //Place the word search in search bar
        let textFieldInsideSearchBar = search.valueForKey("searchField") as? UITextField
        textFieldInsideSearchBar?.text = "Search"
        */
    
        
        //Dismiss keyboard on tap
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier! == "ProfileSegue"){}
        else if(segue.identifier! == "MessagingSegue"){}
        
    else{
        let eventDetailsViewController = segue.destinationViewController as! EventDetailsPage
        
        if(segue.identifier! == "KanyeSegue"){
            eventDetailsViewController.imageName = "kanyeCircle"
            eventDetailsViewController.artist = "Kanye West"
            eventDetailsViewController.venue = "Staples Center"
            eventDetailsViewController.date = "December 5, 2015"
            eventDetailsViewController.time = "7:00 P.M."
            eventDetailsViewController.mapImageName = "staplescenter"
        }
        else if(segue.identifier! == "TaylorSegue"){
            eventDetailsViewController.imageName = "taylorCircle"
            eventDetailsViewController.artist = "Taylor Swift"
            eventDetailsViewController.venue = "Nokia Center"
            eventDetailsViewController.date = "December 5, 2015"
            eventDetailsViewController.time = "8:00 P.M."
            eventDetailsViewController.mapImageName = "microsofttheater"
        }
        else if(segue.identifier! == "KaskadeSegue"){
            eventDetailsViewController.imageName = "kaskadeCircle"
            eventDetailsViewController.artist = "Kaskade"
            eventDetailsViewController.venue = "The Forum"
            eventDetailsViewController.date = "December 12, 2015"
            eventDetailsViewController.time = "9:00 P.M."
            eventDetailsViewController.mapImageName = "forum"
        }
        else if(segue.identifier! == "JustinSegue"){
            eventDetailsViewController.imageName = "justinCircle"
            eventDetailsViewController.artist = "Justin Beiber"
            eventDetailsViewController.venue = "Hollywood Bowl"
            eventDetailsViewController.date = "December 15, 2015"
            eventDetailsViewController.time = "7:00 P.M."
            eventDetailsViewController.mapImageName = "hollywoodbowl"
        }
        else if(segue.identifier! == "DrakeSegue"){
            eventDetailsViewController.imageName = "drakeCircle"
            eventDetailsViewController.artist = "Drake"
            eventDetailsViewController.venue = "Greek Theater"
            eventDetailsViewController.date = "December 21, 2015"
            eventDetailsViewController.time = "8:00 P.M."
            eventDetailsViewController.mapImageName = "greektheater"
        }
        
        }
        
    }
    
    
}
