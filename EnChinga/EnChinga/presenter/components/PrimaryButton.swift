//
//  PrimaryButton.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct PrimaryButton: View {
    let primaryButtonText: LocalizedStringKey
    let onButtonClicked: () -> Void
    
    var body: some View {
        Button(action: onButtonClicked) {
            Text(primaryButtonText)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(.orange)
                .cornerRadius(10)
                .foregroundColor(.white)
        }.padding(.horizontal, 16)
    }
}
