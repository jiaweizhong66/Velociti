//
//  TypingLogoAnimation.swift
//  Velociti
//
//  Created by Curry Zhong on 2024-09-07.
//

import SwiftUI

struct TypingLogoAnimationView: View {
    let textToType = "Velociti"
    @State private var animatedText: String = ""

    var body: some View {
        VStack {
            Text(animatedText)
                .font(.custom("Palatino", size: 34))
                .fontWeight(.bold)
                .padding()
        }
        .onAppear {
            animateText()
        }
    }

    func animateText() {
        let totalCharacters = textToType.count
        for (index, character) in textToType.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.1) {
                animatedText.append(character)
                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                
                // If it's the last character, initiate the retraction animation after a small delay
                if index == totalCharacters - 1 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        retractText()
                    }
                }
            }
        }
    }

    func retractText() {
        let totalCharacters = animatedText.count
        for index in 0..<totalCharacters {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.1) {
                animatedText.removeLast()
                
                // If it's the last character to remove, restart the typing animation
                if animatedText.isEmpty {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        animateText()
                    }
                }
            }
        }
    }
}

struct TypingLogoAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        TypingLogoAnimationView()
    }
}
