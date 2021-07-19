//
//  myProfileViewController.swift
//  loginApp
//
//  Created by Anton Duplin on 18/7/21.
//

import UIKit

class myProfileViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var myBirthdayLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    var userInfo: MainProfile!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = userInfo.personalInfo.name
        surnameLabel.text = userInfo.personalInfo.surname
        myBirthdayLabel.text = userInfo.personalInfo.mybirthday
        statusLabel.text = userInfo.personalInfo.status
    }
}
