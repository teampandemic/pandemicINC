//
//  HomeVC.swift
//  Pandemic.Inc
//
//  Created by Brandon Elmore on 3/30/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit
import Parse

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logout(_ sender: Any) {
        PFUser.logOut()
        self.performSegue(withIdentifier: "LogoutSegue", sender: nil)
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
