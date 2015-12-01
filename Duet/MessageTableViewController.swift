//
//  MessageTableViewController.swift
//  Duet
//
//  Created by Ed Ngai on 11/25/15.
//  Copyright © 2015 Ed Ngai. All rights reserved.
//

import UIKit

class MessageTableViewController: UITableViewController {
    
    var clickedName = ""
    let names = ["Talia", "Justin", "Nam", "Austin", "Caitlin", "Anna", "Jennifer", "Megan", "Louie", "Nikko"]
    let messages = ["Hey!", "Are you down to go see Kanye?", "Wait, I love Justin Bieber too!", "Hey, wanna go to a concert?", "No way!", "Coachella is my favorite!", "Hello There!", "That's super dope!", "Let's meetup!", "Nice, what's your number?"]
    let concerts = ["Drake - 12/21", "Kanye West - 12/05", "Justin Bieber - 12/15", "Taylor Swift - 12/07", "Kaskade - 12/12", "Drake - 12/21", "Kanye West - 12/05", "Justin Bieber - 12/15", "Taylor Swift - 12/07", "Kaskade - 12/12"]
    let imageNames = ["taliasquare", "justinsquare", "namsquare", "austinsquare", "caitlinsquare", "finn", "prince", "fiona", "jake", "EdProfile"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        self.navigationController?.navigationBar.titleTextAttributes = titleDict as! [String : AnyObject]
        
        self.title = "Messages"

    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "MessagingTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MessagingTableViewCell
        
        cell.profileImageView.image = UIImage(named: imageNames[indexPath.row])
        cell.nameLabel.text = names[indexPath.row]
        cell.messageLabel.text = messages[indexPath.row]
        cell.concertLabel.text = concerts[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        clickedName = names[indexPath.row]
        self.performSegueWithIdentifier("MessageToChatSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let chatViewController = segue.destinationViewController as! ChatViewController
        chatViewController.name = clickedName
        
    }
    
    

}
