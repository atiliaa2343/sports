//
//  Settings.swift
//  SportsX
//
//  Created by Atilia T on 10/29/24.
//

//
//  SettingsView.swift
//  SportsX
//
//  Created by Atilia T on 11/26/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Header
                Text("Settings")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)

                Spacer().frame(height: 20)

                // Preferences Section
                VStack(spacing: 10) {
                    HStack {
                        Text("My Preferences")
                            .font(.headline)
                        Spacer()
                    }
                    .padding([.leading, .trailing])

                    Divider()

                    HStack {
                        VStack(alignment: .leading) {
                            Text("Home")
                                .font(.headline)
                                .foregroundColor(.white)
                            Text("Top News + My Teams")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                         
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)

                    HStack {
                        VStack(alignment: .leading) {
                            Text("Video Autoplay")
                                .font(.headline)
                                .foregroundColor(.white)
                            Text("Wi-Fi + Mobile Data")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)

                    HStack {
                        VStack(alignment: .leading) {
                            Text("App Theme")
                                .font(.headline)
                                .foregroundColor(.white)
                            Text("Match System")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)

                    HStack {
                        VStack(alignment: .leading) {
                            Text("TV Provider")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                }
                .padding(.horizontal)

                Spacer()

                // Profile Section
                VStack(spacing: 10) {
                    HStack {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                        Text("My Profile")
                            .font(.headline)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                }
                .padding(.horizontal)

                Spacer()
            }
            .background(Color.black.ignoresSafeArea())
            .navigationBarHidden(true)
        }
    }
}

// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
