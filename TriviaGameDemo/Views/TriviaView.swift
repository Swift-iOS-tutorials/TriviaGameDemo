//
//  TriviaView.swift
//  TriviaGameDemo
//
//  Created by Dennis Shar on 17/09/2022.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    
    var body: some View {
        if triviaManager.reachEnd {
            VStack(spacing: 20){
                Text("Trivia Game")
                    .lilacTitle()
                
                Text("Congrats you comleted the game!")
                Text("You Scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button{
                    Task.init{
                        await triviaManager.fetchTrivia()
                    }
                }label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.9843137254990196, green: 0.9294117647058824, blue: 0.847058823594118))
        }else{
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
