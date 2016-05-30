//
//  SignUpViewController.swift
//  LocationTag
//
//  Created by Mingu Chu on 5/28/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func create() {
        if emailTextField != nil && passwordTextField.text == confirmPasswordTextField.text {
            FIRAuth.auth()?.createUserWithEmail(emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
                if error != nil {
                    print("error occured")
                } else {
                    
                }
            })
        }
    }
    
    
}
