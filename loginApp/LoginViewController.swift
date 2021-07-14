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
    
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? WelcomeViewController else { return }
        settingVC.mainUserLabel = logInTextField.text
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(title: "ooops", message: "Your password is eugenia")
    }
    @IBAction func forgotPasswordAction() {
        showAlert(title: "ooops", message: "Your password is 123456")
        passwordTextField.text = ""
    }
    @IBAction func logInAction(_ sender: UIButton) {
        if logInTextField.text == userName && passwordTextField.text == password {
        } else {
            showAlert(title: "Oooops", message: "Wrong password or user name,please try again")
        }
    }
    
}

// MARK: - Private Methode
extension LoginViewController {
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //clear textField login after wrong try
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.logInTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
private let userName = "eugenia"
private let password = "123456"
