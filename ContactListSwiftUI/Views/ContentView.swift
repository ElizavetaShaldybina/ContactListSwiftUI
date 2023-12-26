//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Елизавета Шалдыбина on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    let person = Person.getContactList()
    
    var body: some View {
        TabView {
            HomeContactsView(person: person)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            NumbersListView(person: person)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
