//
//  Post.swift
//  Hacker News
//
//  Created by Gio Lucero on 2020-05-14.
//  Copyright © 2020 Gio Lucero. All rights reserved.
//

import Foundation

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    var objectID: String
    var points: Int
    var title: String
    var url: String?
}

struct Results: Decodable {
    let hits: [Post]
}
