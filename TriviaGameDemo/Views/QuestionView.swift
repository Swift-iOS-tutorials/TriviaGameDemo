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
                Text ("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: triviaManager.progress)
            
            
            VStack(alignment: .leading, spacing: 20){
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
            
                ForEach(triviaManager.answerChoices, id: \.id){
                    answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
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
