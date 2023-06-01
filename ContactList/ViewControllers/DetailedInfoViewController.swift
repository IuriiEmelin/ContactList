//
//  DetailedInfoViewController.swift
//  ContactList
//
//  Created by Юрий Емелин on 28.05.2023.
//

import UIKit

final class DetailedInfoViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.phoneNumber
        emailLabel.text = person.email
        navigationItem.title = person.fullName
    }
    
}
