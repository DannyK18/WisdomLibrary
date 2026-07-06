//
//  BookManager.swift
//  WisdomLibrary
//
//  Created by admin on 06/07/2026.
//

import Foundation

struct BookManager {
    
    func getBooks() async throws -> [Book] {
 
    let url = URL(string: "https://my-json-server.typicode.com/typicode/demo/posts")!

    let (data, _) =  try await URLSession.shared.data(from: url)
    let books = try JSONDecoder().decode([Book].self, from: data)
        
        return books
    }
}
