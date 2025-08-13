//
//  CardEmailModelView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//

import SwiftUI

struct OptionButton: View {
    let iconName: String
    let title: LocalizedStringKey
    let subtitle: LocalizedStringKey
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 12) {
                Image(systemName: iconName)
                    .font(.system(size: 20))
                    .foregroundColor(isSelected ? .orange : .gray)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text(subtitle)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(isSelected ? Color.orange : Color.gray.opacity(0.3), lineWidth: 2)
                    .background(Color.white.cornerRadius(8))
            )
        }
        .buttonStyle(.plain)
    }
}

struct ContentView: View {
    @State private var selectedOption: String = "email"
    
    var body: some View {
        VStack(spacing: 16) {
            OptionButton(
                iconName: "envelope.fill",
                title: "Email",
                subtitle: "Send to your email",
                isSelected: selectedOption == "email"
            ) {
                selectedOption = "email"
            }
            
            OptionButton(
                iconName: "phone.fill",
                title: "Phone Number",
                subtitle: "Send to your phone number",
                isSelected: selectedOption == "phone"
            ) {
                selectedOption = "phone"
            }
        }
        .padding()
        .background(Color(UIColor.systemGroupedBackground))
    }
}

