//
//  WelcomeView.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Проверь свои знания истории 🧐")
                        .font(.largeTitle)
                        .bold(destination: GameView(), label: {
                        BottomTextView(str: "Поехали!")
                    })
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
