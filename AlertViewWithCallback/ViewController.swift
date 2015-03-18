//
//  ViewController.swift
//  AlertViewWithCallback
//
//  Created by Evgenii Neumerzhitckii on 18/03/2015.
//  Copyright (c) 2015 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    label.text = ""
  }

  @IBAction func onShowAlertTapped(sender: AnyObject) {
    showAlertViewWithTextInput()
  }
  
  private func showAlertViewWithTextInput() {
    let alertView = UIAlertView(title: "Enter your name",
      message: "",
      delegate: nil, cancelButtonTitle: nil, otherButtonTitles: "OK", "Cancel")
    
    alertView.cancelButtonIndex = 1
    alertView.alertViewStyle = UIAlertViewStyle.PlainTextInput
    
    if let emailTextField = alertView.textFieldAtIndex(0) {
      emailTextField.placeholder = "Name"
      emailTextField.autocapitalizationType = UITextAutocapitalizationType.Sentences
      emailTextField.autocorrectionType = UITextAutocorrectionType.Default
      emailTextField.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
    }
    
    alertView.show()
  }
}

