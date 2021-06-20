//
//  HomeFeedView.swift
//  instagram-app
//
//  Created by user on 6/19/21.
//

import SwiftUI

struct HomeFeedView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    StoriesView()
                    
                    ForEach(1...5, id: \.self) { num in
                        PostView(userImageName: "user\(num)"),
                        imageName: "image\(num)")
                        .padding(.bottom, 20)
                    }
                }
            }
            .navigationTitle("Instagram")
        }
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}
