//
//  MessagingTableViewCell.swift
//  Duet
//
//  Created by Ed Ngai on 11/25/15.
//  Copyright © 2015 Ed Ngai. All rights reserved.
//

import UIKit

class MessagingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var concertLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2;
        profileImageView.layer.masksToBounds = true;
        profileImageView.layer.borderWidth = 0;
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    

}
