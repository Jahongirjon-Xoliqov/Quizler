//
//  QuestionData.swift
//  Quizzler
//
//  Created by Administrator on 24/09/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    var question = [Question]()
    
    init() {
        question.append(Question(questionText: "Apple is the greatest company in the world", answer: true))
        question.append(Question(questionText: "The world is not in cycle shape", answer: false))
        question.append(Question(questionText: "The capital of Uzbekistan is Uchkuduk", answer: false))
        question.append(Question(questionText: "The CEO of SpaceX is Elon Mask", answer: true))
    }
}
