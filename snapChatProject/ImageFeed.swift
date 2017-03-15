//
//  imageFeed.swift
//  snapChatProject
//
//  Created by Akilesh Bapu on 2/27/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

// This is the only line of code you should be modifying
class Post{
    
    var Img: UIImage?
    var Poster: String?
    var PostTime: Date?
    var Viewed: Bool?
    init (img:UIImage, poster: String, postTime: Date, viewed: Bool){
        self.Img = img
        self.Poster = poster
        self.PostTime = postTime
        self.Viewed = viewed
    }
}
var threads: [Int: [Post]] = [0: [], 1: [], 2: []]
//

let threadNames = ["Memes", "Dog Spots", "Random"]
var allImages: [UIImage] = [#imageLiteral(resourceName: "cutePuppy"), #imageLiteral(resourceName: "berkAtNight"), #imageLiteral(resourceName: "dankMeme4"), #imageLiteral(resourceName: "Campanile"), #imageLiteral(resourceName: "dankMeme1"), #imageLiteral(resourceName: "dankMeme2"), #imageLiteral(resourceName: "amazingCutePuppy"), #imageLiteral(resourceName: "cutePuppy"), #imageLiteral(resourceName: "dirks"), #imageLiteral(resourceName: "dankMeme3")]
