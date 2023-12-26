//
//  HomeContactsView.swift
//  ContactListSwiftUI
//
//  Created by Елизавета Шалдыбина on 26.12.2023.
//

import SwiftUI

struct HomeContactsView: View {
    
    let person: [Person]
    
    var body: some View {
        NavigationStack {
            List(person) { person in
                NavigationLink(destination: MoreInfoAboutContactsView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    HomeContactsView(person: Person.getContactList())
}
