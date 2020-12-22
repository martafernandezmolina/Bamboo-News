//
//  NewsList.swift
//  bamboo-news
//
//  Created on 16/11/2020.
//

import Foundation
import Alamofire
import UIKit


struct ArticleList: Decodable {
  var status:String
  var totalResults: Int
  var articles: [Article]
}

