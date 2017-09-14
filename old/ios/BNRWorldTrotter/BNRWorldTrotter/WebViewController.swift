//
//  WebViewController.swift
//  BNRWorldTrotter
//
//  Created by Lee Choon Siong on 2017/05/24.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        print("DEBUG: WebViewController viewDidLoad")
        
        super.viewDidLoad()
        
        let url = URL(string: "http://twitter.com/choonsionglee")
        
        if let url = url {
            let urlRequest = URLRequest(url: url)
            print("DEBUG: URL is \(urlRequest)")
            self.webView.loadRequest(urlRequest)
        } else {
            print("ERROR: Cannot request url")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("DEBUG: WebViewController viewWillAppear")
        
        super.viewWillAppear(false)
    }
    
}
