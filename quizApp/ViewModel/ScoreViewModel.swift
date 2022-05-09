//
//  ScoreViewModel.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import Foundation

struct ScoreViewModel {

    let correctGuesses: Int 
    let incorrectGuesses: Int
    
    var percentage: Int {
        100 * (correctGuesses)/(correctGuesses + incorrectGuesses)
    }
}

