//
//  TableViewCell.swift
//  bamboo-news
//
//  Created by Marangi  on 17/11/2020.
//

import UIKit

class TableViewCell: UITableViewCell {

  @IBOutlet weak var ImageCell: UIImageView!
  
  @IBOutlet weak var labelCell: UILabel!
  
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
  
  

}
