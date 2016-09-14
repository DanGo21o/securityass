//
//  FrontCamera.swift
//  proofOfConcepts_SecurityMax
//
//  Created by DGomez on 9/6/16.
//  Copyright © 2016 danielGo. All rights reserved.
//

import Foundation
import AVFoundation

/*
 how do we actually print to a file? Writing this methodology in the captureOutput method. Should be its own method though...
 */
class FrontCamera: AVCaptureVideoDataOutput, AVCaptureVideoDataOutputSampleBufferDelegate {
    
 
    func testFunctionality() {
        
        var captureDevice:AVCaptureDevice
        let captureSession = AVCaptureSession()
        
        let videoDevices = AVCaptureDevice.devicesWithMediaType(AVMediaTypeVideo)
        
        
        for device in videoDevices {
            
            let device = device as! AVCaptureDevice
            if device.position == AVCaptureDevicePosition.Front {
                captureDevice = device
                do {
                    var deviceInput = try AVCaptureDeviceInput(device: captureDevice)
                    var deviceOutput:AVCaptureVideoDataOutput = AVCaptureVideoDataOutput()
                    captureSession.addInput(deviceInput)
                    captureSession.addOutput(deviceOutput)
                          
                    
                } catch _ {
                    print("Could not make use of the front camera for your given device")
                }
                break
            }
        }

    }
    
    func captureOutput(captureOutput: AVCaptureOutput!, didDropSampleBuffer sampleBuffer: CMSampleBuffer!, fromConnection connection: AVCaptureConnection!) {
//        let file = "videoData.txt"
//        let text = sampleBuffer
//        
//        if let dir = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true).first,
//            let path = NSURL(fileURLWithPath: dir) {
//            
//        }
        
    }

    
    
}





































