//
//  ViewController.swift
//  08_webkit
//
//  Created by 黄德宇 on 2022/11/3.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKScriptMessageHandler {
    var wkView: WKWebView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 偏好设置
        let configuration = WKWebViewConfiguration();
        configuration.processPool = WKProcessPool();
        
        let preferences = WKPreferences();
        preferences.minimumFontSize = 0;
        preferences.javaScriptCanOpenWindowsAutomatically = true;
        configuration.preferences = preferences;

        // 注册javascript能使用的全局方法的名称
        let userContentController = WKUserContentController();
        userContentController.add(self, name: "nativeFunc");
        let javascriptString = """
            const fn = () => {
                console.log("我是注入的js代码！js执行啦");
                window.webkit.messageHandlers.nativeFunc.postMessage({name: "hdy", age: 18});
            }
            fn();
            """
        let userScript = WKUserScript(source: javascriptString, injectionTime: .atDocumentStart, forMainFrameOnly: false);
        // 开始注入
        userContentController.addUserScript(userScript);
        configuration.userContentController = userContentController;
        
        wkView = WKWebView(frame: self.view.frame, configuration: configuration);
        self.view.addSubview(wkView!);
        let url = URL(string: "http://www.bilibili.com");
        let request = URLRequest(url: url!)
        wkView!.load(request);
    }
    
    // 接收js发送的消息
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body, message.name);
    }
}

