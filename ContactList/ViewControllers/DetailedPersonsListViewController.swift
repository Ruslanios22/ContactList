//
//  DetailedPersonsListViewController.swift
//  ContactList
//
//  Created by Руслан Шигапов on 19.10.2022.
//

import UIKit

protocol PersonsListViewControllerDelegate {
    func copyPersons(from persons: [Person])
}

class DetailedPersonsListViewController: UITableViewController {
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedPerson", for: indexPath)
        return cell
    }
}

extension DetailedPersonsListViewController: PersonsListViewControllerDelegate {
    func copyPersons(from persons: [Person]) {
        self.persons = persons
    }
}
