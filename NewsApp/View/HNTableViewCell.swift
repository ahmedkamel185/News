//
//  HNTableViewCell.swift
//  NewsApp
//
//  Created by Ahmed Kamel on 5/1/19.
//  Copyright © 2019 Ahmed Kamel. All rights reserved.
//

import UIKit

class HNTableViewCell: UITableViewCell {
    
    
   
    @IBOutlet weak var TitleLabelText: UILabel!
    
    @IBOutlet weak var DetailsLabelText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
