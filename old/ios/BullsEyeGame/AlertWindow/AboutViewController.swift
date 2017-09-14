//
//  AboutViewController.swift
//  AlertWindow
//
//  Created by Lee Choon Siong on 2017/06/12.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var webView: UIWebView!
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                //print("\(#function): htmlData = \(htmlData)")
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                //print("\(#function): baseURL = \(baseURL)")
                self.webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
    }
    
    // MARK: - Actions
    
    // Return to main screen
    @IBAction func closeButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
}
