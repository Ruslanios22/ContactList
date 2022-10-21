//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Руслан Шигапов on 19.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personsListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let detailedPersonsListVC = viewControllers?.last as? DetailedPersonsListViewController else { return }
        
        let persons = Person.getContactList()
        personsListVC.persons = persons
        detailedPersonsListVC.persons = persons
    }
}
