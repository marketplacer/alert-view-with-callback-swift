import UIKit

private let alertViewWithCallbackDelegate1731 = AlertViewWithCallbackDelegate()

class AlertViewWithCallbackDelegate: NSObject, UIAlertViewDelegate {
  
  class var shared: AlertViewWithCallbackDelegate {
    return alertViewWithCallbackDelegate1731
  }
  
  var callback: ((UIAlertView, Int)->())?
  
  private override init() {
    super.init()
  }
  
  func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
    callback?(alertView, buttonIndex)
    callback = nil
  }
}
