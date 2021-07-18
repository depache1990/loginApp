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
    
    private let userInfo = MainProfile.getMyProfile()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarViewController = segue.destination as? UITabBarController else { return }
        for viewController in tabBarViewController.viewControllers! {
            if let welcomeVC = viewController as? WelcomeViewController {
            
                welcomeVC.mainUserLabel = userInfo.userInfo.username
    }
            else if let myProfileVC = viewController as? myProfileViewController {
                
    
    @IBAction func forgotUserNameAction() {
        showAlert(title: "ooops", message: "Your password is \(userInfo.userInfo.username)")
    }
    @IBAction func forgotPasswordAction() {
        showAlert(title: "ooops", message: "Your password is \(userInfo.userInfo.password)")
        passwordTextField.text = ""
    }
    @IBAction func logInAction(_ sender: UIButton) {
        if logInTextField.text == userInfo.userInfo.username && passwordTextField.text == userInfo.userInfo.password {
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

