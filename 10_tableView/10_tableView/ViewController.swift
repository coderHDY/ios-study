//
//  ViewController.swift
//  10_tableView
//
//  Created by 黄德宇 on 2022/11/3.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var dataArray: Array<String> = ["第一行", "第二行", "第三行", "第四行", "第五行"];
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = UITableView(frame: self.view.frame, style: .grouped);
        
        tableView.register(NSClassFromString("UITableViewCell"), forCellReuseIdentifier: "TableViewCellId");
        tableView.delegate = self;
        tableView.dataSource = self;
        self.view.addSubview(tableView);
        tableView.bounces = false;
    }

    // 分区个数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    
    // 行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    // 每行内容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellId", for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row];
        return cell;
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "分区头部";
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "分区尾部";
    }
}

