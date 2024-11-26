//
//  Predictions.swift
//  SportsX
//
//  Created by Atilia T on 10/29/24.
//

import SwiftUI

struct PredictionsScreen: View {
    var body: some View {
        VStack {
           
            // Title
            Text("Top Predictions for Today")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            Spacer().frame(height: 20) // Add spacing below the title
            
            // Row of league icons
            HStack(spacing: 40) {
                // NBA Button
                VStack {
                    Button(action: {
                        print("NBA tapped")
                    }) {
                        Image("nba") // Replace with your NBA logo image asset name
                            .resizable()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    }
                    Text("NBA")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                
                // NFL Button
                VStack {
                    Button(action: {
                        print("NFL tapped")
                    }) {
                        Image("nfl") // Replace with your NFL logo image asset name
                            .resizable()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    }
                    Text("NFL")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                
                // MLB Button
                VStack {
                    Button(action: {
                        print("MLB tapped")
                    }) {
                        Image("mlb") // Replace with your MLB logo image asset name
                            .resizable()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    }
                    Text("MLB")
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 20)
            
            Spacer().frame(height: 300) // Add space between the logos and the AI button
            
            // AI Button
         
                // AI Button with NavigationLink
                NavigationLink(destination: WelcomeScreen()){
                Text("Talk to our AI")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }
            
            Spacer() // Push content to the top
        }
        .background(Color.gray.ignoresSafeArea())
    }
}

struct PredictionsScreen_Previews: PreviewProvider {
    static var previews: some View {
        PredictionsScreen()
    }
}
