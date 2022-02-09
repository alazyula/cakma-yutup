//
//  CacheManager.swift
//  cakma-yutup
//
//  Created by macbookaır on 9.02.2022.
//

import Foundation

class CacheManager {
    
    
    static var cache = [String:Data]()
    
    
    static func setVideoCache(_ url:String, _ data:Data?){
        cache[url] = data
        
    }
    
    static func getVideoCache(_ url:String) -> Data?{
        
        return cache[url]
        
    }
    
}
