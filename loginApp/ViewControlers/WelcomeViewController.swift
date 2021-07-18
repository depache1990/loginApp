//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by Anton Duplin on 13/7/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    
    var mainUserLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = mainUserLabel
      
    }
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    
}
