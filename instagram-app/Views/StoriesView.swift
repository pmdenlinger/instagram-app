//
//  StoriesView.swift
//  instagram-app
//
//  Created by user on 6/19/21.
//

import SwiftUI

struct StoriesView: View {
    let data = (1...5).map({ "user\($0}" })
        
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(data, id: \.self) { imageName in
                    StoryView(imageName: imageName)
                }
            }
        }
    }
}

