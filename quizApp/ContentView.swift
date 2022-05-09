//
//  ContentView.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import SwiftUI

struct ContentView: View {
    let question = Question(questionText: "В каком году написано это приложение?", possibleAnswers: ["2019","2020","2021","2022"], correctAnswerIndex: 3)
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
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
                    ForEach(question.possibleAnswers.indices, id: \.self) { index in
                    Button(action: {
                        print(question.possibleAnswers[index])
                        mainColor = index == question.correctAnswerIndex ? .green : .red
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[index])
                    })
                    }
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
