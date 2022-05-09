//
//  ScoreView.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import SwiftUI

struct ScoreView: View {
    let scoreViewModel: ScoreViewModel
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Итоговый результат:")
                    .font(.body)
                Text("\(scoreViewModel.percentage) %")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(scoreViewModel.correctGuesses) ✅ ")
                    Text("\(scoreViewModel.incorrectGuesses) ❌ ")
                    }
                    .font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Пройти квиз заново")
                    })
                }
           }
        .navigationBarHidden(true)
    }
}


struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(scoreViewModel: ScoreViewModel(correctGuesses: 5, incorrectGuesses: 3))
    }
}
