//
//  AboutPersonViewController.swift
//  Contact
//
//  Created by Buba on 18.10.2022.
//

import UIKit

class AboutPersonViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailNumber: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneNumberLabel.text = person.phoneNumber
        emailNumber.text = person.email
    }
}
