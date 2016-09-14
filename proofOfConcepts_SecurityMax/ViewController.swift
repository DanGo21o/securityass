//
//  ViewController.swift
//  proofOfConcepts_SecurityMax
//
//  Created by DGomez on 9/1/16.
//  Copyright © 2016 danielGo. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, UINavigationControllerDelegate, UImagePickerControllerDelegate {
    
    
    
    var imagePicker: UIImagePickerController
    
    
    @IBOutlet weak var ShowImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        var frontCamera = FrontCamera()
//        frontCamera.testFunctionality()
        
        
    }

    
    @IBAction func TakePhoto(sender: AnyObject) {
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .Camera
        
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject])
    {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        ShowImage.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
}

