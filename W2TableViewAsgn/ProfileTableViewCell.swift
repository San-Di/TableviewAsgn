//
//  ProfileTableViewCell.swift
//  W2TableViewAsgn
//
//  Created by Sandi on 8/10/19.
//  Copyright © 2019 Sandi. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var btnFollow: UIView!
    static let identifier = "ProfileTableViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        
       
        imgProfile.layer.cornerRadius = imgProfile.frame.size.width / 2;
        
        btnFollow.layer.cornerRadius = 10
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
