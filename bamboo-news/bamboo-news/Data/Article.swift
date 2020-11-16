//
//  Article.swift
//  bamboo-news
//
//  Created by Marangi  on 16/11/2020.
//

import Foundation
import Alamofire
import UIKit


struct Article : Decodable {
  let author:String?
  let source: Source
  let title: String?
  let description: String?
  let url: String?
  let urlToImage: String?
  let publishedAt: String?
  let content: String?
}
