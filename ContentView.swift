//
//  ContentView.swift
//  Code Trivia
//
//  Created on 2/3/24.
//

import SwiftUI
import SwiftData

let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)

//Start of body code
struct ContentView: View {
    
    //We created an instance of the question data model (struct defiend in Questions.swift) using the data model.
    let question = Question (
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)

    
    var body: some View {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
            Text("1 / 10")
                .font(.callout)
                .multilineTextAlignment(.leading)
                .padding()
            Text("What was the first computer bug?")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
                    HStack {
                        //Action is action taken when button pressed
                        Button(action:  {
                            print("Tapped on Choice 1")
                            //Label is the view of the button
                        }, label: {
                            Text("Ant")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(Color.accentColor, width: 4)
                        })
                        
                        Button(action:  {
                            print("Tapped on Choice 2")
                            //Label is the view of the button
                        }, label: {
                            Text("Beetle")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(Color.accentColor, width: 4)
                        })
                        
                        Button(action:  {
                            print("Tapped on Choice 3")
                            //Label is the view of the button
                        }, label: {
                            Text("Moth")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(Color.accentColor, width: 4)
                        })
                        
                        Button(action:  {
                            print("Tapped on Choice 4")
                            //Label is the view of the button
                        }, label: {
                            Text("Fly")
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(Color.accentColor, width: 4)
                        })
                        
                    }
            }
        }
            .foregroundColor(.white)
    }
}


#Preview {
    ContentView()
}
