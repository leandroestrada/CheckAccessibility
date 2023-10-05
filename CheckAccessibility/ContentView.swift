//
//  ContentView.swift
//  CheckAccessibility
//
//  Created by Leandro de Araujo Estrada on 05/10/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = QuizViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(viewModel.currentQuestion.question)
                    .font(.title)
                    .padding()
                    .accessibilityAddTraits(.isHeader)
                List(viewModel.currentQuestion.answers.indices, id: \.self) { index in
                    Button(action: {
                        viewModel.submitAnswer(at: index)
                    }) {
                        Text(viewModel.currentQuestion.answers[index])
                            .foregroundColor(viewModel.selectedAnswerIndex == index ? .blue : .primary)
                    }
                    .accessibilityLabel("\(viewModel.currentQuestion.answers[index]), \(viewModel.accessibilityLabel(for: index))")
                    .alert(isPresented: $viewModel.showAlert) {
                        Alert(
                            title: Text(viewModel.feedback(for: viewModel.selectedAnswerIndex)),
                            message: Text("Toque OK para continuar."),
                            dismissButton: .default(Text("OK")) {
                                viewModel.alertDismissed()
                            }
                        )
                    }
                }
            }
            .navigationBarTitle("Quiz Acessibilidade", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
