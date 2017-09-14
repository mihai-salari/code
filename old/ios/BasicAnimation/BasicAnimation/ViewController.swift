//
//  ViewController.swift
//  BasicAnimation
//
//  Created by Lee Choon Siong on 2017/06/02.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var words = ["Hello World!", "Good morning!", "How are you?"]
    var currentWordsIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 注意：viewWillAppear 在這裡只被呼叫一次。所以我把設定 alpha = 0 的部分
        // 放在 animateLabel 裡邊。
        print("viewWillAppear called")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func animateLabelTransitions() {
        let animationClosure = {
            () -> Void in
            self.label.alpha = 1
        }
        
        UIView.animate(withDuration: 0.5, animations: animationClosure)
    }
    
    @IBAction func animateLabel(_ sender: UIButton) {
        self.label.alpha = 0 // Animation won't work if we didn't set the alpha to 0 before we call the animation function
        
        if currentWordsIndex < 3 {
            self.label.text = words[currentWordsIndex]
            self.animateLabelTransitions()
            
            currentWordsIndex = currentWordsIndex == 2 ? 0 : currentWordsIndex + 1 // To prevent out of index
        }
    }
}
