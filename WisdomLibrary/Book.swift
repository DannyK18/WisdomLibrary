//
//  Book.swift
//  WisdomLibrary
//
//  Created by admin on 06/07/2026.
//

import Foundation
import SwiftData

@Model
class Book: Codable {
    var id: Int
    var title: String
    
    init(id: Int, title: String) {
        self.id = id
        self.title = title
    }
    
    enum CodingKeys: String, CodingKey {
        case id, title
    }
    
    required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
          id = try container.decode(Int.self, forKey: .id)
        title = try container.decode(String.self, forKey: .title)
    }
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
    }
}
