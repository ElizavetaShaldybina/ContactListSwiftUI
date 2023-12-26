//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Елизавета Шалдыбина on 26.12.2023.
//
import Foundation

struct Person: Identifiable {
    
    var id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        let dataStore = DataStore()
        
        let names = dataStore.name.shuffled()
        let surnames = dataStore.surname.shuffled()
        let emails = dataStore.email.shuffled()
        let phones = dataStore.phone.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: index, name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

