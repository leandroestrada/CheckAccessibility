//
//  QuizModel.swift
//  CheckAccessibility
//
//  Created by Leandro de Araujo Estrada on 05/10/23.
//

import Foundation

struct Question {
    var question: String
    var answers: [String]
    var correctAnswerIndex: Int
}

struct QuizData {
    static let questions = [
        Question(question: "Qual planeta está mais próximo do sol?", answers: ["Terra", "Marte", "Mercúrio", "Vênus"], correctAnswerIndex: 2),
        Question(question: "Qual planeta é conhecido como o Planeta Vermelho?", answers: ["Terra", "Marte", "Júpiter", "Saturno"], correctAnswerIndex: 1),
        Question(question: "Qual planeta tem mais luas?", answers: ["Marte", "Júpiter", "Saturno", "Urano"], correctAnswerIndex: 1),
        Question(question: "Qual é o maior planeta do Sistema Solar?", answers: ["Terra", "Marte", "Júpiter", "Saturno"], correctAnswerIndex: 2),
        Question(question: "Qual planeta é conhecido por ter anéis?", answers: ["Terra", "Saturno", "Marte", "Vênus"], correctAnswerIndex: 1),
        Question(question: "Qual é o planeta mais quente do nosso sistema solar?", answers: ["Mercúrio", "Vênus", "Terra", "Marte"], correctAnswerIndex: 1),
        Question(question: "Qual planeta é conhecido como o Gêmeo da Terra?", answers: ["Marte", "Vênus", "Júpiter", "Saturno"], correctAnswerIndex: 1),
        Question(question: "Qual planeta não é um planeta terrestre?", answers: ["Terra", "Marte", "Júpiter", "Vênus"], correctAnswerIndex: 2),
        Question(question: "Qual planeta tem a Grande Mancha Vermelha, uma tempestade maciça?", answers: ["Terra", "Marte", "Júpiter", "Saturno"], correctAnswerIndex: 2)
    ]
}
