//
//  ViewController.swift
//  14_tableView
//
//  Created by 黄德宇 on 2022/11/14.
//

import UIKit

class MyCell:UITableViewCell {
    @IBOutlet weak var whiteBtn: UIButton!
    
    @IBOutlet weak var greenViewHidden: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        whiteBtn.addTarget(self, action: #selector(hidden), for: UIControl.Event.touchUpInside)
    }
    @objc func hidden() {
        greenViewHidden.priority = greenViewHidden.priority.rawValue < 100 ? UILayoutPriority(rawValue: 1000.0) : UILayoutPriority(rawValue: 1.0);
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        whiteBtn.addTarget(self, action: #selector(hidden), for: UIControl.Event.touchUpInside)
    }


}

