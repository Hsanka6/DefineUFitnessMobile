//
//  LoginViewController.swift
//  DefineUFitness
//
//  Created by Haasith Sanka on 7/3/19.
//  Copyright © 2019 Haasith Sanka. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController, GIDSignInUIDelegate {
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
//        if let error = error {
//            // ...
//            return
//        }e
//
//        guard let authentication = user.authentication else { return }
//        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
//        // ...
//    }
//

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpGoogleButton()
//        GIDSignIn.sharedInstance().uiDelegate = self
//        GIDSignIn.sharedInstance().signIn()
//        // Do any additional setup after loading the view.
    }
    
    fileprivate func setUpGoogleButton(){
        GIDSignIn.sharedInstance()?.uiDelegate = self
        let googleButton = GIDSignInButton()
        googleButton.frame = CGRect(x: 16, y: 116+66, width: self.view.frame.width - 32, height: 50)
        self.view.addSubview(googleButton)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
