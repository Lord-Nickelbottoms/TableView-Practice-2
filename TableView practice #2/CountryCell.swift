//
//  TableViewCell.swift
//  TableView practice #2
//
//  Created by Nizaam Haffejee on 2023/07/29.
//

import UIKit

class CountryCell: UITableViewCell {
    
    
    @IBOutlet weak var item: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
