//
//  ViewController.swift
//  loginApp
//
//  Created by Anton Duplin on 12/7/21.
//

import UIKit
let log = [(login: "eugenia", password: "123456"),(login: "swiftbook", password: "123")]
class LoginViewController: UIViewController {

    @IBOutlet weak var logInTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  
    @IBAction func forgotUserNameAction() {
    showAlert(title: "ooops", message: "Your password is eugenia")
    }
    @IBAction func forgotPasswordAction() {
        showAlert(title: "ooops", message: "Your password is 123456")
        passwordTextField.text = ""
    }
    @IBAction func logInAction(_ sender: UIButton) {
       
        for i in 0..<log.count {
            if logInTextField.text == log[i].login && passwordTextField.text == log[i].password {
                logInButton.isEnabled = true
            } else {
                logInButton.isEnabled = false
                showAlert(title: "Oooops", message: "Wrong password or user name,please try again")
                break
            }
        }
    }
}

  // MARK: - Private Methode
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //clear textField login after wrond try
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.logInTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
