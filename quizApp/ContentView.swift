//
//  ContentView.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import SwiftUI

struct ContentView: View {
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
                Text("В каком году написано это приложение?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                Spacer()
                HStack {
                    Button(action: {
                        print("Вариант 1")
                    }, label: {
                        Text("2019")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Вариант 2")
                    }, label: {
                        Text("2020")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Вариант 3")
                    }, label: {
                        Text("2021")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Вариант 4")
                    }, label: {
                        Text("2022")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                            .border(accentColor, width: 4)
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
