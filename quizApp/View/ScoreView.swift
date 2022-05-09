//
//  ScoreView.swift
//  quizApp
//
//  Created by Антон Голубейков on 09.05.2022.
//

import SwiftUI

struct ScoreView: View {
    @State var sheet: Bool = false
    let scoreViewModel: ScoreViewModel
    var body: some View {
        var results: [Any] = []
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
                Button(action: {
                    results.removeAll()
                    let result = scoreViewModel.percentage
                    results.append("Привет! Я прошёл квиз, мой текущий результат: \(result)% ")
                    sheet.toggle()
                }, label: {
                    HStack {
                        Text("Поделиться")
                        Image(systemName: "square.and.arrow.up") } })
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Пройти квиз заново")
                    })
                }
            .sheet(isPresented: $sheet, content: {
                ShareSheet(results: results)
            })
           }
        .navigationBarHidden(true)
    }
}


struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(scoreViewModel: ScoreViewModel(correctGuesses: 5, incorrectGuesses: 3))
            .foregroundColor(.white)
    }
}


struct ShareSheet: UIViewControllerRepresentable {
    var results: [Any]
    
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIActivityViewController(activityItems: results, applicationActivities: nil)
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}
