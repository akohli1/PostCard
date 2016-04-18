//
//  ViewController.swift
//  Swift Project 1
//
//  Created by Ayush Kohli on 4/17/16.
//  Copyright (c) 2016 Ayush Kohli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!

    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var enterNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonAction(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        //sender.setTitle(messageLabel.text, forState: UIControlState.Normal)
        enterMessageTextField.resignFirstResponder()
        enterMessageTextField.text = ""
        enterNameLabel.hidden = false
        enterNameLabel.text = enterNameTextField.text
        sender.setTitle(enterNameLabel.text, forState: UIControlState.Normal)
        enterNameLabel.textColor = UIColor.blueColor()
        enterNameTextField.hidden = true

    }

}

