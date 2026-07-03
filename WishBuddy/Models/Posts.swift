//
//  Posts.swift
//  WishBuddy
//
//  Created by Praveen Talari on 29/06/26.
//

import Foundation
struct Post: Codable, Identifiable {
    let userId: Int?
    let id: Int?
    let title: String?
    let body: String?
}
