//
//  Person.swift
//  ContactList
//
//  Created by Юрий Емелин on 26.05.2023.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        var currentPersons: [Person] = []
        let countSurname = DataStore.shared.surnames.count
        for _ in 1...countSurname {
            var name = DataStore.shared.names.randomElement() ?? ""
            while currentPersons.contains(where: ({ $0.name == name})) {
                name = DataStore.shared.names.randomElement() ?? ""
            }
            var surname = DataStore.shared.surnames.randomElement() ?? ""
            while currentPersons.contains(where: ({ $0.surname == surname})) {
                surname = DataStore.shared.surnames.randomElement() ?? ""
            }
            var phoneNumber = DataStore.shared.phoneNumbers.randomElement() ?? ""
            while currentPersons.contains(where: ({ $0.phoneNumber == phoneNumber})) {
                phoneNumber = DataStore.shared.phoneNumbers.randomElement() ?? ""
            }
            var email = DataStore.shared.emails.randomElement() ?? ""
            while currentPersons.contains(where: ({ $0.email == email})) {
                email = DataStore.shared.emails.randomElement() ?? ""
            }
            let currentPerson = Person(name: name, surname: surname, phoneNumber: phoneNumber, email: email)
            currentPersons.append(currentPerson)
        }
        return currentPersons
    }
}

