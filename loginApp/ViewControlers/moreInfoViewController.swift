//
//  moreInfoViewController.swift
//  loginApp
//
//  Created by Anton Duplin on 18/7/21.
//

import UIKit

class moreInfoViewController: UIViewController {
    
    @IBOutlet weak var imageViewOU: UIImageView!
    @IBOutlet weak var placeOfBirthOU: UILabel!
    @IBOutlet weak var placeOfResidenceOU: UILabel!
    @IBOutlet weak var hobbyOU: UILabel!
    @IBOutlet weak var workPositionOU: UILabel!
    
    private let userInfo = MainProfile.getMyProfile()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        placeOfBirthOU.text = userInfo.personalInfo.placeOfBirth
        placeOfResidenceOU.text = userInfo.personalInfo.placeOfResidence
        hobbyOU.text = userInfo.personalInfo.myHobby.randomElement()
        workPositionOU.text = userInfo.personalInfo.workPosition
        imageViewOU.frame = CGRect(x: 0, y: 0, width: 365, height: 400)
        
        
    }
    

    }
    
    
    

