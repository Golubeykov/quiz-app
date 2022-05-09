//
//  ContentView.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import SwiftUI

struct ContentView: View {
    let question = Question(questionText: "В каком году написано это приложение?", possibleAnswers: ["2019","2020","2021","2022"], correctAnswerIndex: 3)
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1/10")
                    .font(.callout)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                Spacer()
                HStack {
                    Button(action: {
                        print(question.possibleAnswers[0])
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })
                    Button(action: {
                        print(question.possibleAnswers[1])
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[1])
                    })
                    Button(action: {
                        print(question.possibleAnswers[2])
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[2])
                    })
                    Button(action: {
                        print(question.possibleAnswers[3])
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[3])
                    })
            }
        }
    }
        .foregroundColor(.white)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
