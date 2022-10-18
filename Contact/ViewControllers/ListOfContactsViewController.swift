//
//  ListOfContactsViewController.swift
//  Contact
//
//  Created by Buba on 18.10.2022.
//

import UIKit

class ListOfContactsViewController: UITableViewController {
    
    private var dataManager = DataManager()
    private var persons: [Person] {
        dataManager.persons
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)

        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutPersonVC = segue.destination as? AboutPersonViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        aboutPersonVC.person = persons[indexPath.row]
    }

}
