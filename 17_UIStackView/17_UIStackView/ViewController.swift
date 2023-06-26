//
//  ViewController.swift
//  17_UIStackView
//
//  Created by huangdeyu on 2023/6/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var hiddenBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btn2.addTarget(self, action: #selector(addBtnClick(_:)), for: .touchUpInside)
    }

    @IBAction func uploadBtnClick(_ sender: UIButton) {
        sender.setTitle("你点啥", for: .normal)
        print("你点啥啊")
    }
    @objc func addBtnClick(_ sender: UIButton) {
        print("你点啥啊")
        sender.setTitle("你点啥啊", for: .normal)
    }
    @IBAction func openThirdPage(_ sender: UIButton) {
        let ThirdController = storyboard!.instantiateViewController(withIdentifier: "ThirdView")
        ThirdController.modalPresentationStyle = .fullScreen;
        present(ThirdController, animated: true, completion: nil)
    }
}

