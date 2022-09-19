//
//  ContentView.swift
//  TriviaGameDemo
//
//  Created by Dennis Shar on 17/09/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40){
                VStack(spacing: 20){
                    Text("Trivia Game")
                        .lilacTitle()
                    
                    Text("Are you ready to test out your trivia skills")
                        .foregroundColor(Color("AccentColor"))
                
                    
                }
                
                
                NavigationLink{
                    TriviaView()
                        .environmentObject(triviaManager)
                }label: {
                    PrimaryButton(text: "Lets go")
                }
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        .background(Color(red: 0.9843137254990196, green: 0.9294117647058824, blue: 0.847058823594118))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
