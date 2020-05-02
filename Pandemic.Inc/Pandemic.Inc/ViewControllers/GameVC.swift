//
//  GameVC.swift
//  Pandemic.Inc
//
//  Created by Brandon Elmore on 3/30/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit
let my_String = "https://www.cdc.gov/coronavirus/2019-ncov/index.html"

class GameVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func OpenURL(_ sender: Any) {
        let my_URL = URL(string: my_String)
        UIApplication.shared.open(my_URL as! URL, options: [:], completionHandler: nil)
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
