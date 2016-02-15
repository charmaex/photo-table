//
//  ImageVC.swift
//  PhotoTable
//
//  Created by Jan Dammshäuser on 15.02.16.
//  Copyright © 2016 Jan Dammshäuser. All rights reserved.
//

import UIKit

class ImageVC: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btn: UIButton!
    
    private var _img: UIImage?
    
    convenience init(img: UIImage?) {
        self.init(nibName: "ImageVC", bundle: nil)
        
        _img = img
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = _img
    }
    
    @IBAction func closeBtn(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
