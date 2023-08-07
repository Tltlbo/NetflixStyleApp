//
//  Content.swift
//  NetflixStyleApp
//
//  Created by 박진성 on 2023/08/07.
//

import UIKit

struct Content : Decodable {
    let sectionType : sectionType
    let sectionName : String
    let contentItem : [Item]
    
    enum sectionType : String, Decodable {
        case basic
        case main
        case large
        case rank
    }
}

struct Item : Decodable {
    let description : String
    let imageName : String
    
    var image : UIImage {
        return UIImage(named: imageName) ?? UIImage()
    }
}
