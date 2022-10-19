//
//  Person.swift
//  ContactList
//
//  Created by Руслан Шигапов on 19.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        for index in 0..<DataStore.shared.names.count {
            let person = Person(
                name: DataStore.shared.names[index],
                surname: DataStore.shared.surnames[index],
                phone: DataStore.shared.phones[index],
                email: DataStore.shared.emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}

