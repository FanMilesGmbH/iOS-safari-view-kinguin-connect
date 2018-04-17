//
//  ViewController.swift
//  WebViewDummy
//
//  Created by Adam Bolcsfoldi on 17.04.18.
//  Copyright © 2018 FanMiles GmbH. All rights reserved.
//

import SafariServices
import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(true)
    
    // These actions do not open with this URL:
    // 1. Fanmiles Connect -> Facebook login
    // 2. Fanmiles Connect -> Log in -> Forgot password
    let currentUrlString =
    "https://id.kinguin.net/oauth/v2/auth?lang=en&mobile=1&response_type=code&approval_prompt=auto&redirect_uri=https%3A%2F%2Fid.kinguin.net%2Fmobile%3FredirectUri=kinguin%3A%2F%2Fkinguin.net%2Fauth&client_id=mobile.kinguin.net"
    
    // This URL works correctly
    let connectString =
    "https://connect.fanmiles.com/auth?response_type=code&client_id=5a6712166edc2066f3815083&scope=openid+profile+email&redirect_uri=https%3A%2F%2Fid.kinguin.net%2Foauth%2Fv2%2Fauth%2Flogin%2Fcheck-fanmiles&nonce=99c5e07b4d5de9d18c350cdf64c5aa3d"
    
    let safariVC = SFSafariViewController(url: URL(string: currentUrlString)!)
    present(safariVC, animated: true, completion: nil)
  }
}



