//
//  ContentView.swift
//  instagram-app
//
//  Created by user on 6/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeFeedView()
                .tabItem {
                    Image(systemName: "house")
                    
                    Text("Home")
                }
            
            ExploreView()
                .tabItem {
                    Image(systemName: "safari")
                    
                    Text("Explore")
                }
            
            HomeFeedView()
                .tabItem {
                    Image(systemName: "camera")
                    
                    Text("Camera")
                }
            
            HomeFeedView()
                .tabItem {
                    Image(systemName: "bell")
                    
                    Text("Notifications")
                }
            
            HomeFeedView()
                .tabItem {
                    Image(systemName: "person.circle")
                    
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
