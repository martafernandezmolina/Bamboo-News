//
//  movies.swift
//  bamboo-news
//
//  Created by Marangi  on 23/11/2020.
//

import Foundation

struct Movie: Decodable {
  
  var title:String
  var year: String
  
  
  enum CodingKeys: String, CodingKey{
     case title
     case year = "release_year"
    
    
  }

}

func sadas () -> Double {
  return 7.8
}
