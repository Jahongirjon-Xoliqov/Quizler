//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    var questionBank = QuestionBank()
    var questonNumber = -1
    var pickedAnswer = Bool()
    var score = 0
    let alert = UIAlertController(title: "Hold on!", message: "Do you wanna go on?", preferredStyle: UIAlertController.Style.alert)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {(action:UIAlertAction!) in
            self.startOver()
        }))
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        } else {
            pickedAnswer = false
        }
        
        checkAnswer()
        nextQuestion()
        
    }
    
    
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questonNumber)/4"
        progressBar.frame.size.width = (view.frame.size.width / 5) * (CGFloat(questonNumber+1))
    }
    

    func nextQuestion() {
        questonNumber += 1
        updateUI()
        if questonNumber <= 3 {
            questionLabel.text = questionBank.question[questonNumber].questionText
        } else {
            // add an action (button)
            updateUI()

                // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    
    func checkAnswer() {
        if pickedAnswer == questionBank.question[questonNumber].answer {
            // here is going to be code from Objective-C
            print("Yes! You got it")
            score += 1
        } else {
            print("No! Sorry man")
        }
        
    }
    
    
    func startOver() {
       // scoreLabel.text = "Score: \(score)"
        questonNumber = -1
        score = 0
        nextQuestion()
        
    }
    

    
}
