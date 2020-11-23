//
//  SourceList.swift
//  bamboo-news
//
//  Created by Marangi  on 20/11/2020.
//

import Foundation

struct fullSource:Decodable {
  let description :String
  let url:String
  let category: String
  let language:String
  let country: String
}
