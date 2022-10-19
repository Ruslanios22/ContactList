//
//  DataStore.swift
//  ContactList
//
//  Created by Руслан Шигапов on 19.10.2022.
//

class DataStore {
    static let shared = DataStore()
    
    let names = ["John", "Sharon", "Aaron", "Steven", "Nicola", "Ted"].shuffled()
    
    let surnames = ["Snow", "Stone", "Paul", "King", "Tesla", "Williams"].shuffled()
    
    let phones = ["112233", "223344", "334455", "445566", "556677", "667788"].shuffled()
    
    let emails = ["aaaa@gmail.com", "bbbb@gmail.com", "cccc@gmail.com",
                  "dddd@gmail.com", "eeee@gmail.com", "ffff@gmail.com"].shuffled()
}
