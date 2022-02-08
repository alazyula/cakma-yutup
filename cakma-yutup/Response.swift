//
//  Response.swift
//  cakma-yutup
//
//  Created by macbookaır on 8.02.2022.
//

import Foundation

struct Response:Decodable {
    var items:[Video]?
    enum CodingKeys: String, CodingKey {
        case items
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.items = try container.decode([Video].self, forKey: .items)
    }
}
