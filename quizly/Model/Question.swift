//
//  Question.swift
//  quizly
//
//  Created by Дмитрий on 09.11.2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
