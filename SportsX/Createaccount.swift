//
//  Createaccount.swift
//  SportsX
//
//  Created by Atilia T on 11/8/24.
//

import SwiftUI

struct CreateAccountScreen: View {
    var onAccountCreated: () -> Void  = {}
    var body: some View {
        ZStack {
            // Background Image
            Image("messi")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            // Button Overlay
            VStack {
                Spacer()
                
                // "Create Your Account" Button
                Button(action: {
                    // Handle create account action
                }) {
                    Text("Create Your Account")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)
                
                // "Log in" Button
                Button(action: {
                    // Handle log in action
                }) {
                    Text("Log in")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 40)
            }
        }
    }
}

struct CreateAccountScreen_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountScreen()
    }
}
