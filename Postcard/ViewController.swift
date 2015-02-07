//
//  ViewController.swift
//  Postcard
//
//  Created by Lucas Pretti on 01/02/15.
//  Copyright (c) 2015 Pretti Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
   
    @IBOutlet weak var enterNAmeTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        //Unhide labels
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        
        //Set label text as respective text field
        
        messageLabel.text  = enterMessageTextField.text
        nameLabel.text  = enterNAmeTextField.text
        
        //Set label color
        
        nameLabel.textColor = UIColor.blueColor()
        messageLabel.textColor = UIColor.redColor()
        
        //Clear text fields
        
        enterMessageTextField.text = ""
        enterNAmeTextField.text = ""
        
        //Hide keyboard
        
        enterMessageTextField.resignFirstResponder()
        enterNAmeTextField.resignFirstResponder()
        
        //Change button label
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
        
        
        
    }
    

}

