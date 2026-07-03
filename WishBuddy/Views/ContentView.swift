//
//  ContentView.swift
//  WishBuddy
//
//  Created by Praveen Talari on 03/03/26.
//

import SwiftUI

//struct ContentView: View {
//    @StateObject private var viewModel = PostViewModel()
//    var body: some View {
//        
//        VStack {
//            Text("Count: \(viewModel.posts.count)")
//                
//        }
//        .padding()
//        .task {
//            await viewModel.fetchPosts()
//        }
//    }
//}

struct ContentView: View {

    @StateObject private var viewModel = PostViewModel()

    var body: some View {

        NavigationStack {

            List(viewModel.posts) { post in

                VStack(alignment: .leading, spacing: 8) {

                    Text(post.title ?? "")
                        .font(.headline)

                    Text(post.body ?? "")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)

                }
                .padding(.vertical, 4)

            }
          //  .navigationTitle("Posts")

        }
        .task {

            await viewModel.fetchPosts()

        }
    }
}
#Preview {
    ContentView()
}
