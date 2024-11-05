//
//  UserBioViewController.swift
//  LoginApp_*
//
//  Created by Артем Иванов on 31.10.2024.
//

import UIKit

final class UserBioViewController: UIViewController {
    
    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.fullName) Bio"
        userBioTextView.backgroundColor = .clear
        userBioTextView.textColor = .white
        userBioTextView.text = user.person.bio

    }
}
