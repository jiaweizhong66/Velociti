//
//  TypingAnimation.swift
//  Velociti
//
//  Created by Curry Zhong on 2024-09-07.
//

import SwiftUI

struct TypingAnimationView: View {
    let textToType = "Velociti"
    @State private var animatedText: String = ""

    var body: some View {
        VStack {
            Text(animatedText)
                .font(.title)
                .padding()

        }
        .onAppear {
            animateText()
        }
    }

    func animateText() {
        for (index, character) in textToType.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.1) {
                animatedText.append(character)
    // You can add haptic feedback to support typing animation.(optional)
                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                // Check if it's the last character
                if index == textToType.count - 1 {
                    // If it's the last character, initiate the retraction animation
                    retractText()
                }
            }
        }
    }

    func retractText() {
        for (index, _) in animatedText.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.1) {
                animatedText.removeLast()
                
                // Check if it's the last character
                if index == animatedText.count - 1 {
                    // If it's the last character, restart the typing animation
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        animateText()
                    }
                }
            }
        }
    }
}

struct TypingAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        TypingAnimationView()
    }
}
