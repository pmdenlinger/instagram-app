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
                        PostView(userImageName: "user\(num)",
                        imageName: "image\(num)")
                        .padding(.bottom, 20)
                    }
                }
            }
            .navigationTitle("Instagram")
        }
    }
}

struct PostView: View {
    let userImageName: String
    let imageName: String
    
    var body:  some View {
        VStack {
            PostHeaderView(userImageName: userImageName)
                .padding()
            
//            Image
            Image(imageName)
                .resizable()
                .frame(width: 430, height: 430, alignment: .center)
                .aspectRatio(contentMode: .fill)
                .background(Color(.secondarySystemBackground))
            
            PostActionButtonsView()
            
            HStack {
//                like count
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(Color.red)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                
                Text("32 Likes")
                    .font(.system(size: 20)
                    .foregroundColor(Color(.link))
                Spacer()
            }
            .padding()
            .padding(.top, -20)
            
//            Caption
            Text("Oh man I hope 2021 is better than 2020! #newyear #trending #swiftui")
                .font(.headline)
                .padding(.top, -15)
            
//            Comments
            
            HStack {
//                Date
                Text("1 hour ago")
                    .foregroundColor(Color(.secondaryLabel))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding()
        }
    }
    
}


struct PostHeaderView: View {
    var userImageName: String
    
    var body: some View {
        HStack {
//            user profile picture and username
            Image(userImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            Text("kanyewest")
                .foregroundColor(Color.blue)
                .bold()
            
            Spacer()
        }
    }
}

struct PostActionButtonsView: View {
    var body: some View {
        HStack {
//            action buttons: like, comment, share
            Button(action: {
//                Like
            }, label: {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
                })
            .padding(.trailing, 10)
            
            Button(action: {
//                Like
            }, label: {
                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(.label))
            })
            .padding(.trailing, 3)
            
            Spacer()
                
            }
        .padding()
        
        }
    }


struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
            .preferredColorScheme(.dark)
    }
}
