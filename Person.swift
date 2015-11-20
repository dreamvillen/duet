//
//  Person.swift
//  Duet
//
//  Created by Ed Ngai on 11/19/15.
//  Copyright © 2015 Ed Ngai. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    let Name: NSString
    let Image: UIImage!
    let Age: NSNumber
    let NumberOfSharedFriends: NSNumber?
    let NumberOfSharedInterests: NSNumber
    let NumberOfPhotos: NSNumber
    
    override var description: String {
        return "Name: \(Name), \n Image: \(Image), \n Age: \(Age) \n NumberOfSharedFriends: \(NumberOfSharedFriends) \n NumberOfSharedInterests: \(NumberOfSharedInterests) \n NumberOfPhotos/: \(NumberOfPhotos)"
    }
    
    init(name: NSString?, image: UIImage?, age: NSNumber?, sharedFriends: NSNumber?, sharedInterest: NSNumber?, photos:NSNumber?) {
        self.Name = name ?? ""
        self.Image = image
        self.Age = age ?? 0
        self.NumberOfSharedFriends = sharedFriends ?? 0
        self.NumberOfSharedInterests = sharedInterest ?? 0
        self.NumberOfPhotos = photos ?? 0
    }
}
