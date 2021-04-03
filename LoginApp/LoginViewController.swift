//
//  MainViewController.swift
//  LoginApp
//
//  Created by  Sergey on 03.04.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let username = "User"
    private let password = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = username
    }
    
    @IBAction func loginPressed() {
        if userTextField.text != username || passwordTextField.text != password {
            showAlert(titleAlert: "Invalid login or password",
                      messageAlert: "Please, enter correct\nlogin and password")
            return
        }
        
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func logoutPressed(segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func ForgotUsernameAlert() {
        showAlert(titleAlert: "Oops!",
                  messageAlert: "Your name is User")
    }
    
    @IBAction func ForgotPassword() {
        showAlert(titleAlert: "Oops!",
                  messageAlert: "Your name is 1234")
    }
    
    func showAlert(titleAlert: String, messageAlert: String) {
        let alertController = UIAlertController(title: titleAlert,
                                                message: messageAlert,
                                                preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "OK",
                                                style: .default))
        
        self.present(alertController, animated: true, completion: nil)
    }
}
