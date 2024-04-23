//
//  ContentView.swift
//  CodeHistory
//
//  Created by Ben Stone on 3/4/21.
//

import SwiftUI

struct GameView: View {
    
//    let question = Question(
//        questionText: "What was the first computer bug?",
//        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
//        correctAnswerIndex: 2)
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                    Text(viewModel.questionProgressText)
                        .font(.callout)
                        .multilineTextAlignment(.leading)
                        .padding()
                
                QuestionView(question: viewModel.currentQuestion)
    
//                HStack {
//                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
//                        Button(action: {
//                            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
//                            
//                            // The line below should be the last thing learners add in this article
//                                
//                        }) {
//                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
//                        }
//                    }
//                }
            }
            
        }
        .foregroundColor(.white)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
