//
//  ViewController.swift
//  16_test
//
//  Created by huangdeyu on 2023/6/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(textLabel.text ?? "");
        textLabel.text = "coderhdy\n好好学习"
    }
}

