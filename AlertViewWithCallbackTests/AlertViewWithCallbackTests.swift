//
//  This is an example of testing alert view functionality.
//
//  Created by Evgenii Neumerzhitckii on 18/03/2015.
//  Copyright (c) 2015 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit
import XCTest
import AlertViewWithCallback

class AlertViewWithCallbackTests: XCTestCase {
  
  func testShowAlert() {
    let alertMock = AlertViewWithCallbackMock()
    
    ViewController.showAlert(alertMock) { name, buttonCaption in }
    
    // Verify alert title
    // ------------------------------
    
    XCTAssertEqual("Enter your name", alertMock.testAlertView!.title)
    
    // Verify alert buttons
    // ------------------------------
    
    XCTAssertEqual(2, alertMock.testAlertView!.numberOfButtons)
    XCTAssertEqual("OK", alertMock.testAlertView!.buttonTitleAtIndex(0))
    XCTAssertEqual("Cancel", alertMock.testAlertView!.buttonTitleAtIndex(1))
  }
  
  func testShowAlert_returnNameAndButtonCaption() {
    let alertMock = AlertViewWithCallbackMock()
    
    var resultName: String?
    var resultButtonCaption: String?
    
    ViewController.showAlert(alertMock) { name, buttonCaption in
      resultName = name
      resultButtonCaption = buttonCaption
    }
    
    // Simulate entering text into alert
    alertMock.testAlertView!.textFieldAtIndex(0)!.text = "Gunter"
    alertMock.tapButton("OK")
    
    // Check the returned values
    // ------------------------------
    
    XCTAssertEqual("Gunter", resultName!)
    XCTAssertEqual("OK", resultButtonCaption!)
  }
}
