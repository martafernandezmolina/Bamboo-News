//
//  ViewController.swift
//  bamboo-news
//
//  Created by Marangi  on 16/11/2020.
//

import UIKit
import Foundation





class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()

    let newsManager = NewsManager()
    NewsManager.fetchdataHeadlines()
    
  }
  
  func fetchData(){
    var emptyString = ""
    let parameters:[String:String]  = ["country":"us", "apiKey":"ad744c6e7c234011ad5decae4f173e16"]
    AF.request(EndPoints.topHeadLines.url, parameters: parameters).validate().responseDecodable(of: ArticleList.self){
      (response) in
      // codigo ejecutable: lo que devuelve el bloque de la request.
      guard let articleList:ArticleList = response.value else {return}
      //  print (articleList.totalResults)
      for elements in articleList.articles {
        emptyString.append("el titulo del artículo es \(elements.title) \n\n" )
        print(emptyString)
      }
      
    }
  }
 
  
}
