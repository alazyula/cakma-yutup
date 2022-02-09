//
//  Video.swift
//  cakma-yutup
//
//  Created by macbookaır on 8.02.2022.
//

import Foundation

struct Video : Decodable {
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    
    enum CodingKeys: String, CodingKey {
        case snippet
        case thumbnails
        case high
        case resourceId
        
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
    }
    
    
    init(from decoder: Decoder) throws {
     let container =  try decoder.container(keyedBy: CodingKeys.self)
     let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        let highController = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        self.thumbnail = try highController.decode(String.self, forKey: .thumbnail)
        
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
    }
    
}
