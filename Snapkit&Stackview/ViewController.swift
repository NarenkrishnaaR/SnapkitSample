//
//  ViewController.swift
//  Snapkit&Stackview
//
//  Created by Naren on 20/01/18.
//  Copyright © 2018 naren. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
  let boxView = UIView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    boxView.backgroundColor = UIColor.blue
    self.view.addSubview(boxView)
    //    autoLayoutusingNsConstraints()
    autoLayoutUsingSnapkit()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  func autoLayoutusingNsConstraints(){
    
    
    boxView.translatesAutoresizingMaskIntoConstraints = false
    
    //    TOP CONSTRAINT
    
    let top = NSLayoutConstraint(item: boxView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
    
    let bottom = NSLayoutConstraint(item: boxView, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0)
    
    let left = NSLayoutConstraint(item: boxView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
    
    let right = NSLayoutConstraint(item: boxView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
    
    self.view.addConstraints([top,bottom,left,right])
  }
  
  func autoLayoutUsingSnapkit(){
    boxView.snp.makeConstraints { (make) in
      //      make.top.bottom.left.right.equalTo(self.view)
      make.edges.equalTo(self.view)
    }
    
    
    let navbar = UIView()
    self.view.addSubview(navbar)
    navbar.backgroundColor = UIColor(red:0.38, green:0.85, blue:0.88, alpha:1)
    navbar.snp.makeConstraints { (make) -> Void in
      make.height.equalTo(64)
      make.width.equalTo(self.view)
    }
    
    let titleLabel = UILabel()
    navbar.addSubview(titleLabel)
    titleLabel.text = "SNAPKIT"
    titleLabel.textColor = UIColor.black
    titleLabel.sizeToFit()
    titleLabel.snp.makeConstraints { (make) -> Void in
      make.center.equalTo(navbar)
    }
    
    let centerLabel = UILabel()
    self.view.addSubview(centerLabel)
    centerLabel.text = "WELCOME TO iOS MEETUP"
    centerLabel.font = UIFont(name: "Helvetica Neue", size: 20)
    centerLabel.snp.makeConstraints { (make) in
      make.center.equalTo(self.view)
    }
  }
  
}

