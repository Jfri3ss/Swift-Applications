//
//  GameViewModel.swift
//  Trivia Game
//
//  Created by Steve Jobs on 4/23/24.
//

import SwiftUI

// 1
class GameViewModel: ObservableObject {
    
    // MARK: - Published properties
    // 2
    @Published private var game = Game()
    
    // MARK: - Internal properties
    // 3
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
}






