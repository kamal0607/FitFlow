//
//  TableViewCell.swift
//  FitFlow
//
//  Created by fcp24 on 14/06/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var abs_label: UILabel!
    
    @IBOutlet weak var exe_label: UILabel!
    @IBOutlet weak var abs_image: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
