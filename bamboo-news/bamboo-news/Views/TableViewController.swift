//
//  TableViewController.swift
//  bamboo-news
//
//  Created by Marangi  on 17/11/2020.
//

import UIKit
import AlamofireImage


class TableViewController: UITableViewController {
  let newsManager = NewsManager()
  var articles : [Article]? = []
  var source:[Source] = []
  
  @IBOutlet weak var tableViewTextField: UITextField!
  
  @IBAction func ActionTableViewText(_ sender: Any) {
    //textFieldShouldReturn()
  }
  @IBOutlet var tableview: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    fetchdataHeadlines ()
    fetchSource()
    fetchMovies()

  }



// MARK: - Table view data source

override func numberOfSections(in tableView: UITableView) -> Int {
  // #warning Incomplete implementation, return the number of sections
  return 1
}

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  // #warning Incomplete implementation, return the number of rows
  return articles?.count ?? 0
}


override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
  
  if let myPrototypeCell = (cell as? TableViewCell),
     let article:Article = articles?[indexPath.row] {
    
    myPrototypeCell.labelCell.text = article.title
    
    if let urlToImage = article.urlToImage,
       let urlImage = URL(string: urlToImage){
      myPrototypeCell.ImageCell.af.setImage(withURL: urlImage)
    }
  }
  
  return cell
}
override func tableView(_ tableView: UITableView,
                        didSelectRowAt indexPath: IndexPath) {
  
  performSegue(withIdentifier: "goToDetalil", sender: nil)
  NewsViewModel.selectecArticle = articles?[indexPath.row]
  
}

func fetchEverything(_ query:String){
  newsManager.fetchEverything(query: query,
                              success:{(news) in
                                self.articles = news.articles
                                self.tableView.reloadData()
                                print("estoy en el bloque success \n\n")
                                print(news.articles.first?.title ?? "texto alaternativo")})
  
}

func fetchdataHeadlines (){
  newsManager.fetchdataHeadlines(countryID: CountryType.unitedKingdom, // tmb .unitedKingdo
                                 success:{(news) in
                                  self.articles = news.articles
                                  self.tableView.reloadData()
                                  print("estoy en el bloque success \n\n")
                                  print(news.articles.first?.title)})
}
  
    
  func fetchSource(){
    newsManager.fechSource(success:{(source)in
     // self.tableView.reloadData()
      print("##### ##### ##### #### ### este bloque me devuelve \(source)")
    })
     
        
        
      }
    
    
  func fetchMovies(){
   
    newsManager.fetchMovies(success:{(movies)in
      // self.tableView.reloadData()
       print("##### ##### ##### #### ### este bloque me devuelve movies :DDDDD \(movies) \n\n ")
     })
      
    
    
  }
    
  }
  
  


extension TableViewController :UITextFieldDelegate {
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    print("\(textField.text)")
    
    fetchEverything(textField.text ?? "")
    textField.resignFirstResponder() // para que se quite el teclado  y que pierda el foco
    return true
  }
}



