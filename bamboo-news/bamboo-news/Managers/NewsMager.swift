//
//  NewsMager.swift
//  bamboo-news
//
//  Created by Marangi  on 17/11/2020.
//

import Foundation
import UIKit
import Alamofire

struct NewsManager {
 
  func fetchdataHeadlines (){
    
    var emptyString2 = ""
    let parameters:[String:String]  = ["country":"us", "apiKey":"ad744c6e7c234011ad5decae4f173e16"]
    
    AF.request(EndPoints.topHeadLines.url, parameters: parameters).validate().responseDecodable(of: ArticleList.self){
      (response) in
      
      guard let articleList:ArticleList = response.value else {return}
      var initializer: Int = 0
      while initializer < articleList.articles.count{
      emptyString2.append("la descripción del del articulo es \(initializer) \(articleList.articles[initializer].description) \n \n")
        initializer += 1
      }
      print(emptyString2)
    }
    
  }
  
  
  
}
