//
//  JournalListView.swift
//  JournalApp
//
//  Created by Pubudu Dilshan on 2025-01-02.
//

import Foundation
import SwiftUI

struct JournalListView: View {
    @State private var journalEntries: [JournalEntry] = [
        JournalEntry(title: "Sample Entry", date: Date(), content: "This is a sample journal entry.")
    ]
    
    var body: some View {
        List {
            ForEach(journalEntries) { entry in
                VStack(alignment: .leading) {
                    Text(entry.title)
                        .font(.headline)
                    Text(entry.date, style: .date)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
        .navigationTitle("Journal Entries")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: AddJournalView()) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct JournalEntry: Identifiable {
    let id = UUID()
    let title: String
    let date: Date
    let content: String
}
