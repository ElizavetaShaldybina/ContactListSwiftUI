//
//  NumbersListView.swift
//  ContactListSwiftUI
//
//  Created by Елизавета Шалдыбина on 26.12.2023.
//

import SwiftUI

struct NumbersListView: View {
    
    let person: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(person) { person in
                    Section(header: Text(person.fullName)) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(Color.blue)
                            Text(person.phoneNumber)
                        }
                        HStack {
                            Image(systemName: "tray")
                                .foregroundColor(Color.blue)
                            Text(person.email)
                        }
                    }
                }
                .navigationBarTitle("Contact List")
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    NumbersListView(person: Person.getContactList())
}
