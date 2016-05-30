//
//  LoginViewController.swift
//  LocationTag
//
//  Created by Mingu Chu on 5/27/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    var ref:FIRDatabaseReference!


    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginButton(sender: AnyObject) {
        if emailTextField.text != nil && passwordTextField.text != nil {
            FIRAuth.auth()?.signInWithEmail(emailTextField.text!,
                                            password: passwordTextField.text!,
                                            completion: { (FIRUser, error) in
                if error != nil {
                    print("\(error?.localizedFailureReason)")
                    self.errorAlert("Log in Failed", message: "\(error!.localizedDescription)")
//                } else if let user = FIRUser {
                } else {
                    print("Logged in")
//                    self.ref.child(user.uid)
                    self.performSegueWithIdentifier("LoginSegue", sender: self)
                }
            })
            
        } else {
            errorAlert("Log in Failed", message: "Please check your email & password")
        }
        
        
    }
    
    func errorAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }

}
