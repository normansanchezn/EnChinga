//
//  SecondaryButton.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct SecondaryButton: View {
    let secondaryButtonText: LocalizedStringKey
    let onButtonClicked: () -> Void
    
    var body: some View {
        Button(action: onButtonClicked) {
            Text(secondaryButtonText)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(.orange.opacity(0.1))
                .cornerRadius(10)
                .foregroundColor(.orange)
        }.padding(.horizontal, 16)
    }
    
}
