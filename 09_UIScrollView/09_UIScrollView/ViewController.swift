//
//  ViewController.swift
//  09_UIScrollView
//
//  Created by 黄德宇 on 2022/11/3.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView(frame: self.view.frame);
        self.view.addSubview(scrollView);
        let subView1 = UIView(frame: self.view.frame);
        subView1.backgroundColor = UIColor.red;
        scrollView.addSubview(subView1);
        
        let subView2 = UIView(frame: self.view.frame);
        subView2.backgroundColor = UIColor.blue;
        scrollView.addSubview(subView2);

        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height * 2);
        
        // 划过头回弹效果
        scrollView.bounces = false;
        
        scrollView.alwaysBounceVertical = false; // 竖直方向回弹
        scrollView.alwaysBounceHorizontal = false;// 水平方向回弹
        
        // 滚动条显示
        scrollView.showsVerticalScrollIndicator = false; // 竖直滚动条
        scrollView.showsHorizontalScrollIndicator = false; // 水平滚动条
        
        // 自动分页，轮播图的效果
        scrollView.isPagingEnabled = true;
    }
}

