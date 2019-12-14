//
//  WebViewController.swift
//  SwiftIntroApp
//
//  Created by 岩男高史 on 2019/12/14.
//  Copyright © 2019 岩男高史. All rights reserved.
//

import UIKit
import WebKit
class WebViewController: UIViewController, WKUIDelegate {

    var webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height - 50)
        view.addSubview(webView)
        
        let urlString = UserDefaults.standard.object(forKey: "url")
        
        let url = URL(string: urlString as! String)!
        
        let request = URLRequest(url: url)
        
        webView.load(request)
        
    }

}
