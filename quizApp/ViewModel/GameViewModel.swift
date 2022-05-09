//
//  GameViewModel.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    @Published private var game = Game()
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    func displayNextScreen() {
        game.updateGameStatus()
    }
    func color (forOptionIndex optionIndex: Int) -> Color {
        if optionIndex == game.guesses[currentQuestion] {
            if optionIndex == game.currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.main
        }
    }
}
