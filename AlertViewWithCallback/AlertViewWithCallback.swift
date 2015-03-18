//
//  Created by Evgenii Neumerzhitckii on 18/03/2015.
//  Copyright (c) 2015 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit

struct AlertViewWithCallback {
  static func show(alert: UIAlertView, onButtonTapped: ((UIAlertView, Int)->())?) {
    AlertViewWithCallbackDelegate.shared.callback = onButtonTapped
    alert.delegate = AlertViewWithCallbackDelegate.shared
    alert.show()
  }
}
