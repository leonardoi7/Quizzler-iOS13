//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    let quiz = [
        ["A slug's blood is green.","True"],
        ["Approximately one quarter of human bones are in the feet.","True"],
        ["The total surface area of two human lungs is approximately 70 square metres.", "False"],
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle // True, False
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Good")
        }else{
            print("Wrong")
        }
        
        questionNumber += 1
        if questionNumber > 2{
            questionNumber = 0
        }
        updateUI()
    }
    
    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
            
    }
    
    
}

