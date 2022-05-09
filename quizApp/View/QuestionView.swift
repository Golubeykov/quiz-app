//
//  QuestionView.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    var body: some View {
        Text(question.questionText)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
        Spacer()
        HStack {
            ForEach(question.possibleAnswers.indices, id: \.self) { index in
            Button(action: {
                print(question.possibleAnswers[index])
                viewModel.makeGuess(atIndex: index)
            }, label: {
                ChoiceTextView(choiceText: question.possibleAnswers[index])
                    .background(viewModel.color(forOptionIndex: index))
            })
            .disabled(viewModel.guessWasMade)
            }
    }
        if viewModel.guessWasMade {
            Button(action: {
                viewModel.displayNextScreen()
            }, label: { BottomTextView(str: "Следующий вопрос") })
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Question.allQuestions[0])
    }
}
