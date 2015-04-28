//
//  This file is unsed in unit tests. It is injected into the app from a unit test to verify the
//  alert view functionality.
//

import UIKit

public class AlertViewWithCallbackMock: AlertViewWithCallback {
  public var testAlertView: UIAlertView?
  
  override func show(alert: UIAlertView, onButtonTapped: ((UIAlertView, Int)->())?) {
    AlertViewWithCallbackDelegate.shared.callback = onButtonTapped
    
    testAlertView = alert
  }
  
  public func tapButton(tapButtonWithIndex: Int) {
    if tapButtonWithIndex > (testAlertView!.numberOfButtons - 1) {
      NSException(
        name: "Button with index \(tapButtonWithIndex) does not exist in alert. There are \(testAlertView!.numberOfButtons) buttons.",
        reason: nil, userInfo: nil).raise()
    }
    
    AlertViewWithCallbackDelegate.shared.callback!(testAlertView!, tapButtonWithIndex)
  }

  // Taps a button with the caption
  public func tapButton(caption: String) {
    var buttonIndex: Int? = nil

    for currentButtonIndex in (0..<testAlertView!.numberOfButtons) {
      let currentCaption = testAlertView!.buttonTitleAtIndex(currentButtonIndex)
      if currentCaption == caption {
        buttonIndex = currentButtonIndex
        break
      }
    }

    if let buttonIndex = buttonIndex {
      tapButton(buttonIndex)
    } else {
      NSException(
        name: "Button with caption \(caption) does not exist in alert view.",
        reason: nil, userInfo: nil).raise()
    }
  }
}
