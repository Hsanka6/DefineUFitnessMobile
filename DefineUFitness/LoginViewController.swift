//
//  LoginViewController.swift
//  DefineUFitness
//
//  Created by Haasith Sanka on 7/3/19.
//  Copyright © 2019 Haasith Sanka. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController,GIDSignInDelegate, GIDSignInUIDelegate {
    @IBOutlet var googleSignInButton: UIButton!
    
    @IBAction func googleSignInAction(_ sender: Any) {
        GIDSignIn.sharedInstance()?.signIn()

    }
  

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID

    }
    //google auth setup in here and app delegate if you need to change something
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error {
            print(error.localizedDescription)
            return
        }
        guard let authentication = user.authentication else { return }
        let credential = GoogleAuthProvider.credential(withIDToken: (authentication.idToken)!, accessToken: (authentication.accessToken)!)

        Auth.auth().signInAndRetrieveData(with: credential, completion: { (authResult, error) in
            if let error = error {
                print(error)
                return
            }
            print("Signed in \(String(describing: user.userID))")
            self.performSegue(withIdentifier: "signedInGoogle", sender: nil)
            
        })
    }
    // Start Google OAuth2 Authentication
    func sign(_ signIn: GIDSignIn?, present viewController: UIViewController?) {
        // Showing OAuth2 authentication window
        if let aController = viewController {
            present(aController, animated: true) {() -> Void in }
        }
    }
    // After Google OAuth2 authentication
    func sign(_ signIn: GIDSignIn?, dismiss viewController: UIViewController?) {
        // Close OAuth2 authentication window
        dismiss(animated: true) {() -> Void in }
    }

}
