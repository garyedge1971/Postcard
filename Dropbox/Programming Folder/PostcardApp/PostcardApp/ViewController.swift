//
//  ViewController.swift
//  PostcardApp
//
//  Created by Gary Edgcombe on 15/09/2014.
//  Copyright (c) 2014 Gary Edgcombe Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var sendMessageButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.hidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //IBActions

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        // Comment to test a commit!
        
        messageLabel.hidden = false
        var myMessage = "Dear \(enterNameTextField.text). \(enterMessageTextField.text)"
        
        messageLabel.text = myMessage
        messageLabel.textColor = UIColor.orangeColor()
        
        resetTextBoxes()
        sendMessageButton.backgroundColor = UIColor.orangeColor()
        sendMessageButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        enterMessageTextField.resignFirstResponder()
    }
    
    @IBAction func enterNameTextFieldTouched(sender: UITextField) {
        println("enterNameTextFieldTouched")
        resetSendMessageButton()
    }
    
    
    //Custom Methods
    
    override func resignFirstResponder() -> Bool {
        return true;
    }
    
    func resetTextBoxes() {
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
    }
    
    func resetSendMessageButton () {
        sendMessageButton.setTitle("Send Message", forState: UIControlState.Normal)
        sendMessageButton.backgroundColor = UIColor.redColor()
    }
  
}

