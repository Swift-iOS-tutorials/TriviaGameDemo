//
//  QuestionView.swift
//  TriviaGameDemo
//
//  Created by Dennis Shar on 17/09/2022.
//

import SwiftUI

struct QuestionView: View {
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
                Text("The Axolotl is an amphibian that can spend its whole life in a larval state.")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.9843137254990196, green: 0.9294117647058824, blue: 0.847058823594118))
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
