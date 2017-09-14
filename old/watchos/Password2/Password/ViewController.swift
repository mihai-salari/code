//
//  ViewController.swift
//  Password
//
//  Created by Lee Choon Siong on 2017/07/02.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "AboutPassword", withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                self.webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

