//
//  LoginView.swift
//  Velociti
//
//  Created by Curry Zhong on 2024-09-07.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                // Spacer to push content upwards
                Spacer()
                
                // Content
                VStack(spacing: geometry.size.height * 0.05) {
                    Text("Welcome to")
                        .font(.custom("Times New Roman", size: 20))
                        .padding(.top, geometry.size.height * 0.2) // Dynamic padding based on screen height
                    
                    Text("Velociti")
                        .font(.custom("Palatino", size: 34)) // Use custom font with specified size
                        .fontWeight(.bold)
                    
                    Spacer() // Push buttons to the bottom
                }
                .frame(maxWidth: .infinity) // Make the VStack take up the full width
                
                // Buttons
                VStack(spacing: geometry.size.height * 0.02) {
                    // Sign Up Button
                    Button(action: {
                        // Handle Sign Up action
                    }) {
                        Text("Sign Up")
                            .font(.custom("Palatino", size: 18)) // Use Palatino font with specified size
                            .padding()
                            .frame(width: geometry.size.width) // Make button expand to the full width of the screen
                            .background(Color(red: 0.067, green: 0.329, blue: 0.286)) // RGB(17, 84, 73) normalized to 0-1 range
                            .foregroundColor(.white)
                            .overlay(
                                Rectangle()
                                    .stroke(Color.black, lineWidth: 1) // Black border
                            )
                    }
                    
                    // Log In Button
                    Button(action: {
                        // Handle Log In action
                    }) {
                        Text("Log In")
                            .font(.custom("Palatino", size: 18)) // Use Palatino font with specified size
                            .padding()
                            .frame(width: geometry.size.width) // Make button expand to the full width of the screen
                            .background(Color.clear) // No background color
                            .foregroundColor(.black) // Optional: Set text color
                            .overlay(
                                Rectangle()
                                    .stroke(Color.black, lineWidth: 1) // Black border
                            )
                    }
                }
                .padding()
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


