//
//  Person.swift
//  ContactList
//
//  Created by Руслан Шигапов on 19.10.2022.
//

struct Person: Equatable {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        while !DataStore.names.isEmpty {
            let person = Person(
                name: DataStore.names.removeFirst(),
                surname: DataStore.surnames.removeFirst(),
                phone: DataStore.phones.removeFirst(),
                email: DataStore.emails.removeFirst()
            )
            persons.append(person)
        }
        return persons
    }
}

