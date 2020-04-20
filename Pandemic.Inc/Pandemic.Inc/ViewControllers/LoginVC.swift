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
    
    
    override func viewDidAppear(_ animated: Bool) {
        checkForUser()
    }
    
    @IBAction func signUp(_ sender: Any) {
        
        if (userNameField.text!.isEmpty || passwordField.text!.isEmpty) {
                          let alertController = UIAlertController(title: "Invalid Entry", message: "Please fill in the username and password", preferredStyle: .alert)
                          
                          // create a cancel action
                          let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
                              // handle cancel response here. Doing nothing will dismiss the view.
                          }
                          // add the cancel action to the alertController
                          alertController.addAction(cancelAction)

                          // create an OK action
                          let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                              // handle response here.
                          }
                          // add the OK action to the alert controller
                          alertController.addAction(OKAction)
                          
                          present(alertController, animated: true) {
                              // optional code for what happens after the alert controller has finished presenting
                          }
                      }
        
        registerUser()
        
        
        }
    
    
    
    @IBAction func Login(_ sender: Any) {
        if (userNameField.text!.isEmpty || passwordField.text!.isEmpty) {
            let alertController = UIAlertController(title: "Invalid Entry", message: "Please fill in the username and password", preferredStyle: .alert)
            
            // create a cancel action
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
                // handle cancel response here. Doing nothing will dismiss the view.
            }
            // add the cancel action to the alertController
            alertController.addAction(cancelAction)

            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            present(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
        }
        
        loginUser()
        self.performSegue(withIdentifier: "LoginSegue", sender: nil)
       
    }
    func registerUser() {
        let newUser = PFUser()
        newUser.username = userNameField.text
        newUser.password = passwordField.text
        
        newUser.signUpInBackground { (success: Bool, error: Error?) in
             if let error = error {
                if error._code == 202{
                    let userNameTaken = UIAlertController(title: "Username Taken", message: "Please select another username", preferredStyle: .alert)
                    let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                        // handle response here.
                    }
                }
                 print(error.localizedDescription)
             } else {
                 print("User Registered successfully")

                self.performSegue(withIdentifier: "LoginSegue", sender: nil)
                 // manually segue to logged in view
             }
         }
    }
    
    
    
    func loginUser() {

       let username = userNameField.text ?? ""
       let password = passwordField.text ?? ""

       PFUser.logInWithUsername(inBackground: username, password: password) { (user: PFUser?, error: Error?) in
            if let error = error {
              print("User log in failed: \(error.localizedDescription)")
            } else {
              print("User logged in successfully")
              // display view controller that needs to shown after successful login
            }
         }
    }

    func checkForUser(){
        if PFUser.current() != nil {
            self.performSegue(withIdentifier: "LoginSegue", sender: nil)
        }
    }
    
}
