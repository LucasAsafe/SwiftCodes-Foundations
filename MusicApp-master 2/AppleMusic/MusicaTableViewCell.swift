//
//  MusicaTableViewCell.swift
//  AppleMusic
//
//  Created by Victor Leal on 23/04/19.
//  Copyright © 2019 Memo. All rights reserved.
//

import UIKit

class MusicaTableViewCell: UITableViewCell {

    @IBOutlet weak var artistaImageView: UIImageView!
    @IBOutlet weak var musicaLabel: UILabel!
    @IBOutlet weak var artistaLabel: UILabel!
    @IBOutlet weak var generoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
