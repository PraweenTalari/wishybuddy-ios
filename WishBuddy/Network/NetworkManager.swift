//
//  NetworkManager.swift
//  WishBuddy
//
//  Created by Praveen Talari on 01/07/26.
//

import Foundation

final class NetworkManager {

    func fetchPosts() async throws -> [Post] {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            throw URLError(.badURL)
        }
     
        do {

               let (data, _) = try await URLSession.shared.data(from: url)

               let posts = try JSONDecoder().decode([Post].self, from: data)

               return posts

           } catch {

               print("NetworkManager Error:", error)

               throw error      // 👈 This line

           }
     
    }

}
