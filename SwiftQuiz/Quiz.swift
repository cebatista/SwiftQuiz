//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Eduardo on 01/02/18.
//  Copyright © 2018 eduardo. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    
    init(question: String, options: [String], correctedAnswed: String){
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswed
    }
 
    func validadeOption(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctedAnswer
    }
    
    deinit {
        print("Liberou quiz da memória")
    }
    
}
