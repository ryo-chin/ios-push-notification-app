//
//  LoginViewController.swift
//  PushNotificationApp
//
//  Created by RyoheiYamamoto on 2020/08/13.
//  Copyright © 2020年 ryohei_yamamoto. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    private var oAuthProvider: OAuthProvider?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.oAuthProvider = OAuthProvider(providerID: "github.com")
    }
    
    @IBAction func touchDownLoginButton(_ sender: Any) {
        self.oAuthProvider?.getCredentialWith(nil) { credential, error in
            print("kuso credential" + credential.debugDescription)
            if error != nil {
                // Handle error.
                print(error.debugDescription)
            }
            if credential != nil {
                Auth.auth().signIn(with: credential!) { authResult, error in
                    if error != nil {
                        // Handle error.
                    }
                    // User is signed in.
                    // IdP data available in authResult.additionalUserInfo.profile.
                    print(authResult?.user.email ?? "none")
                    // GitHub OAuth access token can also be retrieved by:
                    // authResult.credential.accessToken
                    // GitHub OAuth ID token can be retrieved by calling:
                    // authResult.credential.idToken
                }
            }
        }
    }
}

extension LoginViewController {
    
}
