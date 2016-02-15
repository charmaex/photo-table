//
//  PicsCell.swift
//  PhotoTable
//
//  Created by Jan Dammshäuser on 14.02.16.
//  Copyright © 2016 Jan Dammshäuser. All rights reserved.
//

import UIKit

class PicsCell: UITableViewCell {
    
    @IBOutlet weak var imgView: RoundImage!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    func initializeCell(pic: Pics) {
        
        let img = DataService.inst.imageForName(pic.img)
        
        imgView.image = img
        titleLabel.text = pic.title
        descLabel.text = pic.desc
    }
    
}
