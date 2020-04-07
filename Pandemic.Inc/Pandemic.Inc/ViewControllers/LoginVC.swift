//
//  LoginVC.swift
//  Pandemic.Inc
//
//  Created by Brandon Elmore on 4/6/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit
import Parse

class LoginVC: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUp(_ sender: Any) {
        
        let user = PFUser()
            user.username = userNameField.text
            user.password = passwordField.text
        
            user.signUpInBackground { (success, error) in
                if success {
                    self.performSegue(withIdentifier: "LoginSegue", sender: nil)
                }
                else{
                    print("Error:\(error?.localizedDescription)")
                }
            }
        }
    
    
    
    @IBAction func Login(_ sender: Any) {
        
        PFUser.logInWithUsername(inBackground: userNameField.text!, password: passwordField.text!) { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "LoginSegue", sender: nil)
            }
            else{
                print("Error\(error?.localizedDescription)")
            }
        }
    }
    
    
}
