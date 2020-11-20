//
//  SegueView.swift
//  bamboo-news
//
//  Created by Marangi  on 18/11/2020.
//

import Foundation
import Alamofire
import AlamofireImage
import UIKit

class SegueViewController: UIViewController{
  
  @IBOutlet weak var segueImageView: UIImageView!
  @IBOutlet weak var segueLabelText: UILabel!
  
  @IBOutlet weak var segueDate: UILabel!
  @IBOutlet weak var segueAuthor: UILabel!
  @IBOutlet weak var segueTextView: UITextView!
  @IBAction func segueSafariButton(_ sender: Any) {
    guard let article: Article = NewsViewModel.selectecArticle,
    let safariUrl = URL(string: article.url ?? "" ) else { return }
    UIApplication.shared.open(safariUrl)
      
    }


  override func viewDidLoad() {
    guard let article:Article = NewsViewModel.selectecArticle else {return}
    //self.title = NewsViewModel.selectecArticle?.title
    self.title =  article.description
    segueLabelText.text = article.title
    segueTextView.text = article.content
    segueDate.text = article.publishedAtFormatted
    segueAuthor.text = article.author
    if let segueToimage = article.urlToImage, let myImage = URL(string: segueToimage){
      segueImageView.af.setImage(withURL: myImage)
   
  }

    
     
      }
        //segueImageView.image = article.af.setImage(withURl)
   // ImageCell.af.setImage(withURL: urlImage)
  //  segueLabelText.text = NewsViewModel.selectecArticle?.title
//segueTextView.text =  NewsViewModel.selectecArticle?.content
   
    }
  //segueImageView.image = NewsViewModel.selectecArticle?.urlToImage
    //segeImageView.image = NewsViewModel.selectecArticle?.urlToImage
   // segueLabelText.text = article[IndexPath.row].title
    

  


