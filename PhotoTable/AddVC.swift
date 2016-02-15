//
//  AddVC.swift
//  PhotoTable
//
//  Created by Jan Dammshäuser on 14.02.16.
//  Copyright © 2016 Jan Dammshäuser. All rights reserved.
//

import UIKit

class AddVC: UIViewController, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imgView: RoundImage!
    @IBOutlet weak var imgBtn: UIButton!
    @IBOutlet weak var titleTxt: UITextField!
    @IBOutlet weak var descTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addImg(sender: UIButton!) {
        let imgPicker = UIImagePickerController()
        presentViewController(imgPicker, animated: true, completion: nil)
    }
    
    @IBAction func addPost(sender: UIButton!) {
    
    }
    
}
