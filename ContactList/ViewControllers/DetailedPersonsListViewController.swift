//
//  DetailedPersonsListViewController.swift
//  ContactList
//
//  Created by Руслан Шигапов on 19.10.2022.
//

import UIKit

class DetailedPersonsListViewController: UITableViewController {
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedPerson", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = persons[indexPath.section].phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = persons[indexPath.section].email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Private Methods
    private func setupData() {
        guard let tabBar = tabBarController as? TabBarViewController else { return }
        persons = tabBar.persons
    }
}
