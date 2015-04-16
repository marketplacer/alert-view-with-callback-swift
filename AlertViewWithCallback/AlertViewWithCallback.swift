import UIKit

public class AlertViewWithCallback {
  public init() { }

  func show(alert: UIAlertView, onButtonTapped: ((UIAlertView, Int)->())?) {
    AlertViewWithCallbackDelegate.shared.callback = onButtonTapped
    alert.delegate = AlertViewWithCallbackDelegate.shared
    alert.show()
  }
}
