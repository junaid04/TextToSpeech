//
//  ViewController.swift
//  TextToSpeech
//
//  Created by Higher Visibility on 1/14/16.
//  Copyright © 2016 Higher Visibility. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextView!
    let synth = AVSpeechSynthesizer()
    var uttering = AVSpeechUtterance(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("view did load")
    }
    
    override func viewDidAppear(animated: Bool) {
        print("view did appear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Speech(sender: AnyObject) {
        uttering = AVSpeechUtterance(string: textField.text)
        uttering.rate = 0.3
        
        uttering.pitchMultiplier = 0.25
        uttering.volume = 1.0
        synth.speakUtterance(uttering)
        
        
    }
    
}

