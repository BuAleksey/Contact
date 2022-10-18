//
//  SecondListOfContactTableViewController.swift
//  Contact
//
//  Created by Buba on 18.10.2022.
//

import UIKit

class SecondListOfContactsTableViewController: UITableViewController {

    let dataManager = DataManager()
    var persons: [Person] {
        dataManager.persons
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondContact", for: indexPath)

        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
        } else if indexPath.row == 1 {
            content.text = person.email
            content.image = UIImage(systemName: "envelope.open")
            cell.contentConfiguration = content
        }

        return cell
    }
}
