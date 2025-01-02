//
//  AddJournalView.swift
//  JournalApp
//
//  Created by Pubudu Dilshan on 2025-01-02.
//

import Foundation
import SwiftUI

struct AddJournalView: View {
    @State private var title: String = ""
    @State private var content: String = ""
    @State private var showingPhotoPicker = false
    @State private var selectedImage: UIImage? = nil

    var body: some View {
        Form {
            Section(header: Text("Journal Title")) {
                TextField("Enter title", text: $title)
            }

            Section(header: Text("Journal Content")) {
                TextEditor(text: $content)
                    .frame(height: 150)
            }

            Section {
                Button(action: {
                    showingPhotoPicker = true
                }) {
                    Text("Add Photo")
                }
                if let image = selectedImage {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                }
            }
        }
        .navigationTitle("Add Entry")
        .sheet(isPresented: $showingPhotoPicker) {
            PhotoPicker(selectedImage: $selectedImage)
        }
    }
}
