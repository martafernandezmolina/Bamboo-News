//
//  ViewController.swift
//  bamboo-news
//
//  Created by Marangi  on 16/11/2020.
//

import UIKit
import Foundation
import Alamofire




class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    fetchData()
    
  }
  
  
  
  func fetchData(){
    let parameters:[String:String] = ["country": "us", "apikey":"ad744c6e7c234011ad5decae4f173e16"]
    var articleeList:String = ""
    AF.request(EndPoints.topHeadLines.url, parameters: parameters).validate().responseDecodable(of: ArticleList.self){
      (response) in
      guard let articleList:ArticleList = response.value else {
        print(String(describing: response.error))
        return }
      print(articleList.totalResults)
      print(articleList.articles)
      for articles in articleList.articles{
        articleeList.append("el articulo es \(articles.title) \n\n ")
      }
    }
  }
  
}


