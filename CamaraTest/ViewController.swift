//
//  ViewController.swift
//  CamaraTest
//
//  Created by Infraestructura on 21/10/16.
//  Copyright © 2016 Infraestructura. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UINavigationControllerDelegate, UIImagePickerControllerDelegate
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let aButton = UIButton()
        
        aButton.setTitle("Galería", forState: .Normal)
        aButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        aButton.frame = CGRectMake(120, 50, 80, 30)
        aButton.addTarget(self, action: "creaFotoGalleryPicker", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(aButton)
    }
    
    func creaFotoGalleryPicker ()
    {
        let imagePickerController: UIImagePickerController=UIImagePickerController()
        
        imagePickerController.modalPresentationStyle = .CurrentContext
        //imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.sourceType = .Camera
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        
        self.presentViewController(imagePickerController, animated:true, completion:nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        let image:UIImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        let selectedFoto:UIImageView = UIImageView(image: image)
        
        selectedFoto.frame = CGRectMake(16, 100, 288, 192);
        
        self.view.addSubview(selectedFoto)
        
        self.dismissViewControllerAnimated(true, completion:nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController)
    {
        self.dismissViewControllerAnimated(true, completion:nil)
    }
    
    
}

