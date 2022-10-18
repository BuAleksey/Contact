//
//  Contact.swift
//  Contact
//
//  Created by Buba on 18.10.2022.
//

struct Person {
    let name: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}
