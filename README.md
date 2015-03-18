# Show UIAlertView with callback closure in Swift

This is a helper function that allows you to show an UIAlertView and supply a callback
closure to receive user input from it. It allows to use the UIAlertView without supplying
a delegate object.

## Setup

Copy [AlertViewWithCallbackDelegate.swift](https://raw.githubusercontent.com/exchangegroup/alert-view-with-callback-swift/master/AlertViewWithCallback/AlertViewWithCallbackDelegate.swift) and [AlertViewWithCallback.swift](https://raw.githubusercontent.com/exchangegroup/alert-view-with-callback-swift/master/AlertViewWithCallback/AlertViewWithCallback.swift) into your project.

## Usage

```Swift

let alertView = UIAlertView(title: "Do you want to cancel this operation?",
  message: "", delegate: nil, cancelButtonTitle: nil,
  otherButtonTitles: "OK", "Cancel")

AlertViewWithCallback.show(alertView) { alertView, buttonIndex in
  println("You closed alert by tapping button #\(buttonIndex)")
}
```

## Demo

<img src='https://raw.githubusercontent.com/exchangegroup/alert-view-with-callback-swift/master/graphics/uialertview_with_callback_swift_1.png' width='320'>
<img src='https://raw.githubusercontent.com/exchangegroup/alert-view-with-callback-swift/master/graphics/uialertview_with_callback_swift_2.png' width='320'>

## Credit

HUGE thanks to **Arkku** for the [Objective-C example](http://stackoverflow.com/a/9662147/297131).

## Project home

https://github.com/exchangegroup/alert-view-with-callback-swift
