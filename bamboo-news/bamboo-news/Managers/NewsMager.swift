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
  
  let apiKeyValue = "ad744c6e7c234011ad5decae4f173e16" // puede ser static
  func fetchdataHeadlines(countryID:CountryType,
                          success: @escaping(ArticleList)-> ()){

    var emptyString2 = ""
    let parameters:[String:String]  = [EndpointsParameters.country.rawValue: countryID.rawValue,
                                       EndpointsParameters.apiKey.rawValue: apiKeyValue]
    
    AF.request(EndPoints.topHeadLines.url, parameters: parameters).validate().responseDecodable(of: ArticleList.self){
      (response) in
      
      guard let articleList:ArticleList = response.value else {
    
        return}
      var initializer: Int = 0
      while initializer < articleList.articles.count{
      emptyString2.append("La descripción del del articulo es \(initializer) \(articleList.articles[initializer].description) \n \n")
        initializer += 1
      }
      print(emptyString2)
      success(articleList)
    }
    
  }
  

  
}
