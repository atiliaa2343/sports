//
//  NFLcommunities.swift
//  SportsX
//
//  Created by Atilia T on 11/25/24.
//

//
//  Communitieslist.swift
//  SportsX
//
//  Created by Atilia T on 11/8/24.
//
import SwiftUI

struct NFLView: View {
    @State private var searchText = ""

    // Sample team data
    let teams = [
        Team(name: "Dallas Cowboys ", logo: "dallas_logo"),
        Team(name: "Green Bay Packers", logo: "greenbay_logo"),
        Team(name: "Washington Redskins", logo: "redskins_logo"),
        Team(name: "Pittsburgh Steelers", logo: "steelers_logo")
    ]

    var filteredTeams: [Team] {
        if searchText.isEmpty {
            return teams
        } else {
            return teams.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                // Search Bar
                TextField("Search...", text: $searchText)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding([.leading, .trailing])

                // List of Teams
                List(filteredTeams) { team in
                    HStack {
                        Image(team.logo) // Team logo
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        Text(team.name) // Team name
                            .font(.headline)
                    }
                    .padding(.vertical, 5)
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("NBA", displayMode: .inline)
        }
       // .tabBar()
    }
}

// Tab Bar for Bottom Navigation
struct NFLTabBarView: View {
    var body: some View {
        TabView {
            NFLView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Live")
                .tabItem {
                    Image(systemName: "bolt")
                    Text("Live")
                }
            Text("Community")
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Community")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

// Model for Teams
struct NFLTeam: Identifiable {
    let id = UUID()
    let name: String
    let logo: String
}

// Preview
struct NFLTeam_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
