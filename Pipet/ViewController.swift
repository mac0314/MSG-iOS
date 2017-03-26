//
//  ViewController.swift
//  Pipet
//
//  Created by mac on 2017. 7. 17..
//  Copyright © 2017년 Rare young man. All rights reserved.
//

import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // https가 아닌 http url 연결을 원하는 경우 Info.plist를 수정해주어야 한다.
        // App Transport Security Settings 수정
        let url = URL(string: "http://www.pipette.xyz")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

