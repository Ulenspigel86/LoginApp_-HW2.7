//
//  UserInfoViewController.swift
//  LoginApp_*
//
//  Created by Артем Иванов on 31.10.2024.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var userPhotoImage: UIImageView! {
        didSet {
            userPhotoImage.layer.cornerRadius = userPhotoImage.frame.height / 2
        }
    }

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userCompanyLabel: UILabel!
    @IBOutlet var userSubdivisionLabel: UILabel!
    @IBOutlet var userJobtitleLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        userPhotoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        userNameLabel.text = user.person.name
        userSurnameLabel.text = user.person.surname
        userCompanyLabel.text = user.person.job.title
        userSubdivisionLabel.text = user.person.job.department.rawValue
        userJobtitleLabel.text = user.person.job.jobTitle.rawValue
        
     }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userBioVC = segue.destination as? UserBioViewController
        userBioVC?.user = user
    }
}
