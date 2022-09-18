//
//  Answer.swift
//  TriviaGameDemo
//
//  Created by Dennis Shar on 17/09/2022.
//

import Foundation


struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
