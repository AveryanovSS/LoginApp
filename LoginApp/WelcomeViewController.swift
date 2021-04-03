//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by  Sergey on 03.04.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome\n\(user)"
    }

}
