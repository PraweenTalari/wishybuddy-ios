//
//  PostViewModel.swift
//  WishBuddy
//
//  Created by Praveen Talari on 01/07/26.
//

import Foundation
internal import Combine

@MainActor
final class PostViewModel:ObservableObject {

    @Published var posts: [Post] = []

    private let networkManager = NetworkManager()

    func fetchPosts() async {
            
        do {
            posts = try await networkManager.fetchPosts()
        } catch {
            print(error.localizedDescription)
        }
    }
}
