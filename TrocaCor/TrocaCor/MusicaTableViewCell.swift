//
//  MusicaTableViewCell.swift
//  Musica
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import UIKit

class MusicaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nomeLabel: UILabel!
    
    @IBOutlet weak var artistaLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
