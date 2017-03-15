//
//  SeePostViewCell.swift
//  snapChatProject
//
//  Created by siyuan on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class SeePostViewCell: UITableViewCell {

    @IBOutlet weak var ColorDot: UILabel!
    
    @IBOutlet weak var PosterName: UILabel!
    
    @IBOutlet weak var PostTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
