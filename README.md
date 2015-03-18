# Show UIAlertView with callback closure in Swift

This is a helper function that allows you to show an UIAlertView and supply a callback
closure to receive user input from it. It allows to use the UIAlertView without supplying
a delegate object.

## Setup

Copy `AlertViewWithCallbackDelegate.swift` and `AlertViewWithCallback.swift` into your project.

## Usage

```Swift

let alertView = UIAlertView(title: "Do you want to cancel this operation?", message: "",
  delegate: nil, cancelButtonTitle: nil, otherButtonTitles: "OK", "Cancel")

AlertViewWithCallback.show(alertView) { alertView, buttonIndex in
  println("You closed alert by tapping button #\(buttonIndex)")
}
```

## Credit

Thanks to **Arkku** for the [Objective-C example](http://stackoverflow.com/a/9662147/297131).

## Project home

