//
//  Question.swift
//  Quizzler
//
//  Created by Administrator on 24/09/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    let questionText: String
    let answer: Bool
    
    init(questionText: String, answer: Bool) {
        self.questionText = questionText
        self.answer = answer
    }
}
