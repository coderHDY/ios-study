//
//  ViewController.swift
//  12_scrollView
//
//  Created by 黄德宇 on 2022/11/4.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yellowBtn: UIButton!

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var deepBlueView: UIView!
    @IBOutlet weak var deepBlueBtn: UIButton!
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

        
        blueBtn.backgroundColor = UIColor.red

        blueView.constraints.forEach { cons in
            print("======");
            print(cons);
        }

        let btn1 = UIButton(frame: CGRect(x: 200, y: 100, width: 100, height: 100));
        btn1.setTitle("哈哈哈", for: UIControl.State.normal);
        blueView.addSubview(btn1);
        btn1.backgroundColor = UIColor.blue;
        
        deepBlueBtn.addTarget(self, action: #selector(deepBlueBtnClick), for: UIControl.Event.touchUpInside)
    }
    @objc func zero () {
        redHeight0.priority = redHeight0.priority.rawValue < 201 ? UILayoutPriority(rawValue: 1000.0) : UILayoutPriority(rawValue: 200.0)
    }
    @objc func deepBlueBtnClick() {
//        print(deepBlueBtn.constraints)
//        print(deepBlueBtn.frame)
//        scrollView.scroll
        print(deepBlueBtn.layer.frame)
        print(deepBlueBtn.layer.bounds)
        print(deepBlueView.frame.origin.y)
    }
}

