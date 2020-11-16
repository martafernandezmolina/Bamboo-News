//
//  NewsList.swift
//  bamboo-news
//
//  Created by Marangi  on 16/11/2020.
//

import Foundation
import Alamofire
import UIKit


struct ArticleList: Decodable {
  var status:String
  var totalResult: Int
  var articles: [Article]
}

