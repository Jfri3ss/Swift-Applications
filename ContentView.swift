//
//  ContentView.swift
//  Code Trivia
//
//  Created by Steve Jobs on 2/3/24.
//

import SwiftUI
import SwiftData

let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)

//Start of body code
struct ContentView: View {
    
    //We created an instance of the question data model (struct defiend in Questions.swift) using the data model for the first question.
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
            Text("1 / 10")
                .font(.callout)
                .multilineTextAlignment(.leading)
                .padding()
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
                    HStack {
                        
                        ForEach(0..<question.possibleAnswers.count) { answerIndex in
                            Button(action: {
                                print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                                mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                            }, label: {
                                ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                                
                            })
                          }
                        }
                    
                    //All this code was replaced with the ForEach loop above! for user interfaces!!!
                        
//                        //Action is action taken when button pressed
//                        Button(action:  {
//                            print("Tapped on Choice 1")
//                            //Label is the view of the button
//                        }, label: {
//                            ChoiceTextView(choiceText: question.possibleAnswers[0])
//                        })
//                        
//                        Button(action:  {
//                            print("Tapped on Choice 2")
//                            //Label is the view of the button
//                        }, label: {
//                            ChoiceTextView(choiceText: question.possibleAnswers[1])
//                        })
//                        
//                        Button(action:  {
//                            print("Tapped on Choice 3")
//                            //Label is the view of the button
//                        }, label: {
//                            ChoiceTextView(choiceText: question.possibleAnswers[2])
//                        })
//                        
//                        Button(action:  {
//                            print("Tapped on Choice 4")
//                            //Label is the view of the button
//                        }, label: {
//                            ChoiceTextView(choiceText: question.possibleAnswers[3])
//
//                        })
//                        
//                    }
            }
        }
            .foregroundColor(.white)
    }
}


#Preview {
    ContentView()
}
