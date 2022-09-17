//
//  Extentions.swift
//  TriviaGameDemo
//
//  Created by Dennis Shar on 17/09/2022.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
