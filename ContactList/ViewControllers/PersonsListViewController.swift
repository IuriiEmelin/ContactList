//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Юрий Емелин on 26.05.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    private let contactList = Person.getPersonsList()
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailedInfoVC = segue.destination as? DetailedInfoViewController else { return }
        detailedInfoVC.person = contactList[indexPath.row]
    }
    
}

// MARK: - UITableViewDataSource
extension PersonsListViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FullName", for: indexPath)
        let person = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }

}
