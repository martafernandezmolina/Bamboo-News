//
//  SegueView.swift
//  bamboo-news
//
//  Created by Marangi  on 18/11/2020.
//

import Foundation
import UIKit

class SegueViewController: UIViewController{
  
  
  override func viewDidLoad() {
    self.title = NewsViewModel.selectecArticle?.title
  }
  
}

