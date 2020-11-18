//
//  TableViewController.swift
//  bamboo-news
//
//  Created by Marangi  on 17/11/2020.
//

import UIKit

class TableViewController: UITableViewController {
  
  let newsManager = NewsManager()
  var articles : [Article]?
  
  @IBOutlet var tableview: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    print ("Hola")
    
//        newsManager.fetchdataHeadlines(countryID: CountryType.unitedKingdom, // tmb .unitedKingdo
//                                       success:{(news) in
//                                        self.articles = news.articles
//                                        self.tableView.reloadData()
//                                        print("estoy en el bloque success \n\n")
//                                        print(news.articles.first?.title)})
//                                       }
    
    newsManager.fetchEverything(query: "bitcoin",
                                success:{(news) in
                                  self.articles = news.articles
                                  self.tableView.reloadData()
                                  print("estoy en el bloque success \n\n")
                                  print(news.articles.first?.title ?? "")})
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
        
      }
      
      return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
  }

