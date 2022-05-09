//
//  Question.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Первое упоминание о Москве в летописях", possibleAnswers: ["857","1087","1147","1277"], correctAnswerIndex: 2),
        Question(questionText: "В каком году было крещение Руси?", possibleAnswers: ["980","780","890","988"], correctAnswerIndex: 3),
        Question(questionText: "Год отмены крепостного права", possibleAnswers: ["1865","1861","1868","1860"], correctAnswerIndex: 1),
        Question(questionText: "Первый полет в космос", possibleAnswers: ["1961","1960","1962","1965"], correctAnswerIndex: 0),
    Question(questionText: "Год основания Санкт-Петербурга", possibleAnswers: ["1713","1731","1701","1703"], correctAnswerIndex: 3)
    ]
}
