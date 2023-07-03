//
//  ListController.swift
//  17_UIStackView
//
//  Created by huangdeyu on 2023/6/29.
//

import UIKit

class ListController: UIViewController {
    var dataArr: [String] = []
    
    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0...99 {
            dataArr.append("你好呀\(index)")
        }
        
        // 事件代理为本类
//        myTable.delegate = self
        // 数据代理为本类
//        myTable.dataSource = self
        myTable.reloadData()
        
    }
    
}

extension ListController: UITableViewDataSource, UITableViewDelegate {
    // 有多少个
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    // 每一个Cell长什么样子
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // id 为 UITableView 里面的 UICell 的 id
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = dataArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("点击了\(dataArr[indexPath.row])")
    }
}
