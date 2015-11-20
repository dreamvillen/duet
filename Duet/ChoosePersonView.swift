//
//  ChoosePersonView.swift
//  Duet
//
//  Created by Ed Ngai on 11/19/15.
//  Copyright © 2015 Ed Ngai. All rights reserved.
//

import UIKit
import MDCSwipeToChoose

class ChoosePersonView: MDCSwipeToChooseView {
    
    let ChoosePersonViewImageLabelWidth:CGFloat = 42.0;
    var person: Person!
    var informationView: UIView!
    var nameLabel: UILabel!
    var carmeraImageLabelView:ImagelabelView!
    var interestsImageLabelView: ImagelabelView!
    var friendsImageLabelView: ImagelabelView!
    
    init(frame: CGRect, person: Person, options: MDCSwipeToChooseViewOptions) {
        
        super.init(frame: frame, options: options)
        self.person = person
        
        if let image = self.person.Image {
            self.imageView.image = image
        }
        
        self.autoresizingMask = [UIViewAutoresizing.FlexibleHeight, UIViewAutoresizing.FlexibleWidth]
        UIViewAutoresizing.FlexibleBottomMargin
        
        self.imageView.autoresizingMask = self.autoresizingMask
        constructInformationView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    func constructInformationView() -> Void{
        let bottomHeight:CGFloat = 60.0
        let bottomFrame:CGRect = CGRectMake(0,
            CGRectGetHeight(self.bounds) - bottomHeight,
            CGRectGetWidth(self.bounds),
            bottomHeight);
        self.informationView = UIView(frame:bottomFrame)
        self.informationView.backgroundColor = UIColor.whiteColor()
        self.informationView.clipsToBounds = true
        self.informationView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleTopMargin]
        self.addSubview(self.informationView)
        constructNameLabel()
        constructCameraImageLabelView()
        constructInterestsImageLabelView()
        constructFriendsImageLabelView()
    }
    
    func constructNameLabel() -> Void{
        let leftPadding:CGFloat = 12.0
        let topPadding:CGFloat = 17.0
        let frame:CGRect = CGRectMake(leftPadding,
            topPadding,
            floor(CGRectGetWidth(self.informationView.frame)/2),
            CGRectGetHeight(self.informationView.frame) - topPadding)
        self.nameLabel = UILabel(frame:frame)
        self.nameLabel.text = "\(person.Name), \(person.Age)"
        self.informationView .addSubview(self.nameLabel)
    }
    func constructCameraImageLabelView() -> Void{
        var rightPadding:CGFloat = 10.0
        let image:UIImage = UIImage(named:"camera")!
        self.carmeraImageLabelView = buildImageLabelViewLeftOf(CGRectGetWidth(self.informationView.bounds), image:image, text:person.NumberOfPhotos.stringValue)
        self.informationView.addSubview(self.carmeraImageLabelView)
    }
    func constructInterestsImageLabelView() -> Void{
        let image: UIImage = UIImage(named: "book")!
        self.interestsImageLabelView = self.buildImageLabelViewLeftOf(CGRectGetMinX(self.carmeraImageLabelView.frame), image: image, text:person.NumberOfPhotos.stringValue)
        self.informationView.addSubview(self.interestsImageLabelView)
    }
    
    func constructFriendsImageLabelView() -> Void{
        let image:UIImage = UIImage(named:"group")!
        self.friendsImageLabelView = buildImageLabelViewLeftOf(CGRectGetMinX(self.interestsImageLabelView.frame), image:image, text:"No Friends")
        self.informationView.addSubview(self.friendsImageLabelView)
    }
    
    func buildImageLabelViewLeftOf(x:CGFloat, image:UIImage, text:String) -> ImagelabelView{
        let frame:CGRect = CGRect(x:x-ChoosePersonViewImageLabelWidth, y: 0,
            width: ChoosePersonViewImageLabelWidth,
            height: CGRectGetHeight(self.informationView.bounds))
        let view:ImagelabelView = ImagelabelView(frame:frame, image:image, text:text)
        view.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin
        return view
    }
}
