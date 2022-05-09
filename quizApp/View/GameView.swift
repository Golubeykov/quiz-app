//
//  ContentView.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import SwiftUI

struct GameView: View {

    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                QuestionView(question: viewModel.currentQuestion)
        }
    }
    .foregroundColor(.white)
    .navigationBarHidden(true)
    .environmentObject(viewModel)
    .background(
        NavigationLink(destination: ScoreView(scoreViewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: { EmptyView() })
    )
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
