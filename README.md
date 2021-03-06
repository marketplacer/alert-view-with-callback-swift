

# Show UIAlertView with callback closure in Swift

This is a helper function that allows you to show an UIAlertView and supply a callback
closure to receive user input from it. It allows to use the UIAlertView without supplying
a delegate object.

## Deprecation notice

As you probably know UIAlertView is deprecated by Apple. Here is a replacement library for creating testable UIAlertController alerts:

https://github.com/marketplacer/TestableAlert


## Setup

Copy [AlertViewWithCallbackDelegate.swift](https://raw.githubusercontent.com/marketplacer/alert-view-with-callback-swift/master/AlertViewWithCallback/AlertViewWithCallbackDelegate.swift) and [AlertViewWithCallback.swift](https://raw.githubusercontent.com/marketplacer/alert-view-with-callback-swift/master/AlertViewWithCallback/AlertViewWithCallback.swift) into your project.

## Usage

```Swift

let alertView = UIAlertView(title: "Do you want to cancel this operation?",
  message: "", delegate: nil, cancelButtonTitle: nil,
  otherButtonTitles: "OK", "Cancel")

AlertViewWithCallback().show(alertView) { alertView, buttonIndex in
  println("You closed alert by tapping button #\(buttonIndex)")
}
```

## Testing alert view

It is easy to verify your alert view  in unit tests where you can check its title, text inputs and buttons. In addition, one can emulate user interaction by entering text into the text inputs, tapping a button and then verifying that the callback was called correctly.

In order to test your alert view simply add [AlertViewWithCallbackMock.swift](https://raw.githubusercontent.com/marketplacer/alert-view-with-callback-swift/master/AlertViewWithCallback/AlertViewWithCallbackMock.swift) to your project and inject `AlertViewWithCallbackMock` into your app from the unit test.

See [this unit test](https://raw.githubusercontent.com/marketplacer/alert-view-with-callback-swift/master/AlertViewWithCallbackTests/AlertViewWithCallbackTests.swift) for details.

## Demo

<img src='https://raw.githubusercontent.com/marketplacer/alert-view-with-callback-swift/master/graphics/uialertview_with_callback_swift_1.png' width='320'>
<img src='https://raw.githubusercontent.com/marketplacer/alert-view-with-callback-swift/master/graphics/uialertview_with_callback_swift_2.png' width='320'>

## Credit

HUGE thanks to **Arkku** for the [Objective-C example](http://stackoverflow.com/a/9662147/297131).

## Project home

https://github.com/marketplacer/alert-view-with-callback-swift
