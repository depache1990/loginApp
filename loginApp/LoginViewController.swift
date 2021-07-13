//
//  ViewController.swift
//  loginApp
//
//  Created by Anton Duplin on 12/7/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var logInTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var forgotUserNameButton: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()    }}
  //showAlert(title: "Your User Name is eugenia", message: "ooops")

// MARK: - Private Methode
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
    }
}
