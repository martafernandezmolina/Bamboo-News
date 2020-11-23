//
//  endPoints.swift
//  bamboo-news
//
//  Created by Marangi  on 16/11/2020.
//

import Foundation

enum EndPoints:String {
  
  case topHeadLines = "https://newsapi.org/v2/top-headlines"
  case eveything = "https://newsapi.org/v2/everything"
  case fullSource = "https://newsapi.org/v2/sources"
  case movies = "https://private-9f06db-multitest.apiary-mock.com/movies"
  
  
   var url: String {self.rawValue }
}


enum EndpointsParameters:String {
  
  case country, apiKey, description
  case query = "q"
  
}



