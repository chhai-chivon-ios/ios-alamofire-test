//
//  Photo.swift
//  AlamofireTest
//
//  Created by Chhai Chivon on 4/8/18.
//  Copyright © 2018 Chhai Chivon. All rights reserved.
//

import Foundation
import ObjectMapper

class Photo : Mappable {
 
    var albumId : Int?
    var id:Int?
    var title:String?
    var url:String?
    var thumbnailUrl:String?
    
    required init(map : Map) {
        
    }
    
    func mapping(map: Map) {
        albumId         <-  map["albumId"]
        id              <-  map["id"]
        title           <-  map["title"]
        url             <-  map["url"]
        thumbnailUrl    <-  map["thumbnailUrl"]
    }
}
