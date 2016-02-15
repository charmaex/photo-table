//
//  AddVC.swift
//  PhotoTable
//
//  Created by Jan Dammshäuser on 14.02.16.
//  Copyright © 2016 Jan Dammshäuser. All rights reserved.
//

import UIKit

class AddVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imgView: RoundImage!
    @IBOutlet weak var imgBtn: UIButton!
    @IBOutlet weak var titleTxt: UITextField!
    @IBOutlet weak var descTxt: UITextField!
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        imgView.image = image
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addImg(sender: UIButton!) {
        let imgPicker = UIImagePickerController()
        imgPicker.delegate = self
        presentViewController(imgPicker, animated: true, completion: nil)
        
        imgBtn.setTitle("", forState: .Normal)
    }
    
    @IBAction func addPost(sender: UIButton!) {
        guard let img = imgView.image, let title = titleTxt.text, let description = descTxt.text else {
            return
        }
        
        DataService.inst.addPic(img, title: title, description: description)
        
        navigationController?.popViewControllerAnimated(true)
    }
    
}
