//
//  ContentView.swift
//  JournalApp
//
//  Created by Pubudu Dilshan on 2025-01-02.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Gradient Background
                LinearGradient(
                    gradient: Gradient(colors: [Color.orange.opacity(0.8), Color.purple.opacity(0.9)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(spacing: 40) {
                    // App Title
                    Text("📓 Welcome to JournalApp")
                        .font(.system(size: 32, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)

                    // Static Image
                                       Image("journal_cover") // Replace with your image asset name
                                           .resizable()
                                           .scaledToFit()
                                           .frame(height: 250)
                                           .cornerRadius(15)
                                           .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 4)
                                           .padding()
                    
                    
                    // Subtitle/Description
                    Text("Capture your thoughts and memories in one place.")
                        .font(.system(size: 18, weight: .medium, design: .rounded))
                        .foregroundColor(.white.opacity(0.9))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)

                    Spacer()

                    // Navigation Button
                    NavigationLink(destination: JournalListView()) {
                        Text("View Journal Entries")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: 280)
                            .background(Color.white)
                            .foregroundColor(Color.blue)
                            .cornerRadius(15)
                            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
                    }
                }
                .padding()
            }
        }
    }
}



#Preview {
    ContentView()
}
