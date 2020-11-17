//
//  endPoints.swift
//  bamboo-news
//
//  Created by Marangi  on 16/11/2020.
//

import Foundation

enum EndPoints:String {
  
  case topHeadLines = "https://newsapi.org/v2/top-headlines"
  
   var url: String {self.rawValue }
}




