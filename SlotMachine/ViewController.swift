//
//  ViewController.swift
//  SlotMachine
//
//  Created by Miguel Herrero Baena on 20/09/14.
//  Copyright (c) 2014 Miguel Herrero Baena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Containers
    var firstContainer: UIView!
    var secondContainer: UIView!
    var thirdContainer: UIView!
    var fourthContainer: UIView!
    
    //Information Label
    var creditLabel: UILabel!
    var betLabel: UILabel!
    var winnerPaidLabel: UILabel!
    var creditsTitleLabel: UILabel!
    var betTittleLabel: UILabel!
    var winnerPaidTittleLabel: UILabel!
    
    //Top container
    var titleLabel: UILabel!
    
    //constants
    
    let kMarginForView:CGFloat = 10.0
    let kMarginForSlot:CGFloat = 2
    let kSixth:CGFloat = 1.0/6.0
    let kThird:CGFloat = 1.0/3.0
    let kNumberOfContainers = 3
    let kNumberOfSlots = 3

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupContainerView()
        
        setUpFirstContainer(self.firstContainer)
        setUpSecondContainer(self.secondContainer)
        setUpThirdContainer(self.thirdContainer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupContainerView() {
        self.firstContainer = UIView(frame: CGRectMake(self.view.bounds.origin.x + self.kMarginForView, self.view.bounds.origin.y, self.view.bounds.width - (kMarginForView * 2), self.view.bounds.height * kSixth))
        self.firstContainer.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.firstContainer)
        
        self.secondContainer = UIView(frame: CGRectMake(self.view.bounds.origin.x + kMarginForView, firstContainer.frame.height, self.view.bounds.width - (kMarginForView * 2), self.view.bounds.height * (3 * kSixth)))
        self.secondContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.secondContainer)
        
        self.thirdContainer = UIView(frame: CGRectMake(self.view.bounds.origin.x + kMarginForView, firstContainer.frame.height + secondContainer.frame.height, self.view.bounds.width - (kMarginForView * 2), self.view.bounds.height * kSixth))
        self.thirdContainer.backgroundColor = UIColor.grayColor()
        self.view.addSubview(self.thirdContainer)
        
        self.fourthContainer = UIView(frame: CGRectMake(self.view.bounds.origin.x + kMarginForView, firstContainer.frame.height + secondContainer.frame.height + thirdContainer.frame.height, self.view.bounds.width - (kMarginForView * 2), self.view.bounds.height * kSixth))
        self.fourthContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.fourthContainer)
        
    }
    
    func setUpFirstContainer(containerView: UIView) {
        self.titleLabel = UILabel()
        self.titleLabel.text = "SuperSlots"
        self.titleLabel.textColor = UIColor.yellowColor()
        self.titleLabel.font = UIFont(name: "MarketFelt-Wide", size: 40)
        self.titleLabel.sizeToFit()
        self.titleLabel.center = containerView.center
        
        containerView.addSubview(self.titleLabel)
    }
    
    func setUpSecondContainer(containerView:UIView) {
        for var containerNumber = 0; containerNumber < kNumberOfContainers; ++containerNumber {
            for var slotNumber = 0; slotNumber < kNumberOfSlots; ++slotNumber {
                var slotImageView = UIImageView()
                slotImageView.backgroundColor = UIColor.yellowColor()
                slotImageView.frame = CGRectMake(containerView.bounds.origin.x + (containerView.bounds.size.width * CGFloat(containerNumber) * kThird), containerView.bounds.origin.y + (containerView.bounds.size.height * CGFloat(slotNumber) * kThird), containerView.bounds.width * kThird - kMarginForSlot, containerView.bounds.height * kThird - kMarginForSlot)
                containerView.addSubview(slotImageView)
            }
        }
    }
    
    func setUpThirdContainer(containerView: UIView) {
        
        self.creditLabel = UILabel()
        self.creditLabel.text = "000000"
        self.creditLabel.textColor = UIColor.redColor()
        self.creditLabel.font = UIFont(name: "Menlon-Bold", size: 16)
        self.creditLabel.sizeToFit()
        self.creditLabel.center = CGPointMake(containerView.frame.width * kSixth, containerView.frame.height * kThird)
        self.creditLabel.textAlignment = NSTextAlignment.Center
        self.creditLabel.backgroundColor = UIColor.darkGrayColor()
        containerView.addSubview(self.creditLabel)
        
    }
    
}
    
    
    
    
    
    
    
    
    
    
