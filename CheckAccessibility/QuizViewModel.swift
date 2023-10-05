//
//  QuizViewModel.swift
//  CheckAccessibility
//
//  Created by Leandro de Araujo Estrada on 05/10/23.
//

import Foundation

class QuizViewModel: ObservableObject {
    @Published var currentQuestionIndex = 0
    @Published var selectedAnswerIndex: Int?
    @Published var showAlert = false
    
    let questions = QuizData.questions
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    func submitAnswer(at index: Int) {
        selectedAnswerIndex = index
        showAlert = true
    }
    
    func alertDismissed() {
        if isAnswerCorrect {
            moveToNextQuestion()
        }
        selectedAnswerIndex = nil
        showAlert = false
    }
    
    var isAnswerCorrect: Bool {
        selectedAnswerIndex == currentQuestion.correctAnswerIndex
    }
    
    func moveToNextQuestion() {
        if currentQuestionIndex + 1 < questions.count {
            currentQuestionIndex += 1
        } else {
            currentQuestionIndex = 0
        }
    }
    
    func feedback(for index: Int?) -> String {
        index == currentQuestion.correctAnswerIndex ? "Resposta correta!" : "Tente novamente"
    }
    
    func accessibilityLabel(for index: Int) -> String {
        index == currentQuestion.correctAnswerIndex ? "Resposta correta" : "Resposta incorreta"
    }
}
