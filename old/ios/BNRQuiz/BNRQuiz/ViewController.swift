//
//  ViewController.swift
//  BNRQuiz
//
//  Created by Lee Choon Siong on 2017/05/06.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 9 + 9?",
        "What is the capital of Japan?",
        "What is my favorite color"
    ]
    
    let answers: [String] = [
        "18",
        "Tokyo",
        "White"
    ]
    
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(self.view.description)
        
        self.questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        self.currentQuestionIndex += 1
        
        if self.currentQuestionIndex == self.questions.count {
            self.currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        
        self.questionLabel.text = question
        self.answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = self.answers[currentQuestionIndex]
        
        self.answerLabel.text = answer
    }
}
