//
//  QuestionView.swift
//  Trivia Game
//
//  Created by Steve Jobs on 4/23/24.
//

import SwiftUI

struct QuestionView: View {
    
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    Button(action: {
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                        
                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        
                    }
                }
                
            }
        }
    }
}









