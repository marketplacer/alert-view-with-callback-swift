//
//  ViewController.swift
//  AlertViewWithCallback
//
//  Created by Evgenii Neumerzhitckii on 18/03/2015.
//  Copyright (c) 2015 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  
  override public func viewDidLoad() {
    super.viewDidLoad()
    
    label.text = ""
  }
  
  override public func preferredStatusBarStyle() -> UIStatusBarStyle {
    return UIStatusBarStyle.LightContent
  }

  @IBAction func onShowAlertTapped(sender: AnyObject) {
    ViewController.showAlert(AlertViewWithCallback()) { name, buttonName in
      self.label.text = "Hello, \(name)! You tapped \(buttonName) button."
    }
  }
  
  public class func showAlert(alertWithCallback: AlertViewWithCallback,
    onResult: (String,String)->()) {
      
    let alertView = createAlertView()

    alertWithCallback.show(alertView) { alertView, index in
      var name = alertView.textFieldAtIndex(0)?.text ?? ""
      if name.isEmpty { name = "Princess Bubblegum" }
      let buttonName = index == 0 ? "OK" : "Cancel"
      
      onResult(name, buttonName)
    }
  }
  
  private class func createAlertView() -> UIAlertView {
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
    
    return alertView
  }
}

