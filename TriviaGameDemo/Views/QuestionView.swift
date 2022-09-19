//
//  QuestionView.swift
//  TriviaGameDemo
//
//  Created by Dennis Shar on 17/09/2022.
//

import SwiftUI

struct QuestionView: View {
   @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        VStack(spacing: 40){
            HStack {
                Text("Trivia Game")
                    .lilacTitle()
                Spacer()
                Text ("1 out of 10")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: 40)
            
            
            VStack(alignment: .leading, spacing: 20){
                Text("Bulls are attracted to the color red")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                AnswerRow(answer: Answer(text: "False", isCorrect: true))
                    .environmentObject(triviaManager)
                AnswerRow(answer: Answer(text: "True", isCorrect: false))
                    .environmentObject(triviaManager)
            }
            
            PrimaryButton(text: "Next")
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.9843137254990196, green: 0.9294117647058824, blue: 0.847058823594118))
        .navigationBarBackButtonHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .environmentObject(TriviaManager())
    }
}
