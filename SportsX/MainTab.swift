import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            // Category Filter Buttons
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(["Sports", "All", "Articles", "Photos", "Videos"], id: \.self) { category in
                        Button(action: {
                            // Handle category selection
                        }) {
                            Text(category)
                                .font(.headline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background(Color.gray.opacity(0.2))
                                .clipShape(Capsule())
                        }
                    }
                }
                .padding()
            }

            Spacer().frame(height: 20)

            // Post Content
            VStack(alignment: .leading, spacing: 15) {
                // Post Header
                HStack {
                    Image("nba") // Replace with actual NBA logo asset
                        .resizable()
                        .frame(width: 40, height: 40)
                    HStack{
                        Spacer().frame(width: 10)
                        Text("NBA News")
                            .font(.headline)
                            .foregroundColor(.gray)
                    }
                }

                // Post Title and Stats
                Text("Trae Records 10 Turnovers in Loss")
                    .font(.title3)
                    .bold()

                Text("OKC’s defense stifled Trae in Hawk’s first loss")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Text("24 PTS | 8 AST | 10 TO | 7/14 FG")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                // Post Image
                Image("trae") // Replace with actual asset name for Trae Young's image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(10)

                // View Comments Section
                VStack {
                    Text("View all comments")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.top, 10)

                    HStack {
                        TextField("Post a comment ...", text: .constant("")) // Replace with binding
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)

                        Button(action: {
                            // Handle "SEND" action
                        }) {
                            Text("SEND")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal)

            Spacer()
        }
        .background(Color.black.opacity(0.9).ignoresSafeArea())
    }
}

struct MainTabView: View {
    var body: some View {
        TabView {
            // Home Tab (Set as the first tab to make it the default)
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            // Profile Tab
            ProfileTab()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }

            // Predictions Tab
            PredictionsScreen()
                .tabItem {
                    Label("Predictions", systemImage: "bolt")
                }

            // Notifications Tab
            NotificationsTab()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }

            // Discussion Tab
            DiscussionTab()
                .tabItem {
                    Label("Discussion", systemImage: "person.3")
                }
        }
        
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

