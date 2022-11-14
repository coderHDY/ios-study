//
//  ViewController.swift
//  12_scrollView
//
//  Created by 黄德宇 on 2022/11/4.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yellowBtn: UIButton!

    @IBOutlet weak var redHeight0: NSLayoutConstraint!
    @IBOutlet weak var blueViewHeight: NSLayoutConstraint!
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var redView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        yellowBtn.addTarget(self, action: #selector(zero), for: UIControl.Event.touchUpInside);
        blueViewHeight.constant = 600;
    
        blueBtn.translatesAutoresizingMaskIntoConstraints = false;  // ????
        
        let btnLeading = blueBtn.leadingAnchor.constraint(equalTo: blueView.leadingAnchor, constant: 100);
        let btnLeadingY = blueBtn.centerYAnchor.constraint(equalTo: blueView.centerYAnchor);
        let btnWidth = blueBtn.widthAnchor.constraint(equalToConstant: 200);
        let btnHeight = blueBtn.heightAnchor.constraint(equalToConstant: 200);

        NSLayoutConstraint.activate([btnLeading, btnLeadingY, btnWidth, btnHeight]);

//        let cons: NSLayoutConstraint = NSLayoutConstraint.init(item: blueBtn!, attribute: .top, relatedBy: .equal, toItem: blueView, attribute: .top, multiplier: 1, constant: 200)
//        cons.isActive = true
//        blueView.addConstraint(cons)
//
//        let cons2: NSLayoutConstraint = NSLayoutConstraint.init(item: blueBtn!, attribute: .bottom, relatedBy: .equal, toItem: blueView, attribute: .bottom, multiplier: 1, constant: 200)
//        cons2.isActive = true
//        blueView.addConstraint(cons2)
//
//        let cons3: NSLayoutConstraint = NSLayoutConstraint.init(item: blueBtn!, attribute: .leading, relatedBy: .equal, toItem: blueView, attribute: .leading, multiplier: 1, constant: 200)
//        cons3.isActive = true
//        blueView.addConstraint(cons3)
//
//        let cons4: NSLayoutConstraint = NSLayoutConstraint.init(item: blueBtn!, attribute: .trailing, relatedBy: .equal, toItem: blueView, attribute: .trailing, multiplier: 1, constant: 200)
//        cons4.isActive = true
//        blueView.addConstraint(cons4)
        
        blueBtn.backgroundColor = UIColor.red
//        blueBtn.constraints.forEach { cons in
//            print("======")
//            print(cons)
//        }
        blueView.constraints.forEach { cons in
            print("======");
            print(cons);
        }

        let btn1 = UIButton(frame: CGRect(x: 200, y: 100, width: 100, height: 100));
        btn1.setTitle("哈哈哈", for: UIControl.State.normal);
        blueView.addSubview(btn1);
        btn1.backgroundColor = UIColor.blue;
    }
    @objc func zero () {
        redHeight0.priority = redHeight0.priority.rawValue < 201 ? UILayoutPriority(rawValue: 1000.0) : UILayoutPriority(rawValue: 200.0)
    }
}

