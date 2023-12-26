//
//  MoreInfoAboutContactsView.swift
//  ContactListSwiftUI
//
//  Created by Елизавета Шалдыбина on 26.12.2023.
//

import SwiftUI

struct MoreInfoAboutContactsView: View {
    
    let person: Person
    
    var body: some View {
        ZStack {
            List {
                Section {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .padding(.leading, 100)
                    
                    HStack {
                        Image(systemName: "phone")
                            .foregroundStyle(Color.blue)
                        Text(person.phoneNumber)
                    }
                    
                    HStack {
                        Image(systemName: "tray")
                            .foregroundColor(Color.blue)
                        Text(person.email)
                    }
                }
            }
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    MoreInfoAboutContactsView(person: Person.getContactList().first!)
}
