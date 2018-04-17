# Kinguin Fanmiles Connect inside SFSafariViewController
For describing &amp; testing issues with Kinguin connect inside a Safari ViewController

This app opens a `SFSafariViewController` with the same url as the *Login* button in the Kinguin app, in order to reproduce two issues with the _Fanmiles Connect_ flow. 
Both issues seem to be that no actions triggering the opening of new tabs/windows work. These are
1. Facebook login
2. Log in -> Forgot password

The issues are reproducable by simply running this Xcode-project. There's also an example of a Connect-url that does not have these issues in [ViewController.swift](https://github.com/FanMilesGmbH/iOS-safari-view-kinguin-connect/blob/master/WebViewDummy/ViewController.swift) (`connectString`).

Our working theory is that `SFSafariViewController` blocks pop-up triggered from another pop-up. E.g.. using the non-working current url,

`kinguin.net` pops up `connect.fanmiles.com` that in turn fails to pop up `facebook.com`

while using the `connectString`-url

`connect.fanmiles.com` sucessfully pops up `facebook.com`
