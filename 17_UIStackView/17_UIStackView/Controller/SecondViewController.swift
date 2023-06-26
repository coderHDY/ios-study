//
//  SecondViewController.swift
//  17_UIStackView
//
//  Created by huangdeyu on 2023/6/26.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    @IBAction func closeBtn(_ sender: Any) {
        dismiss(animated: true)
    }
}
