//
//  SecondaryButton.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct SecondaryButton: View {
    @Binding var buttonModel: ButtonModel?
    
    var body: some View {
        Button {
            buttonModel?.onButtonClicked()
        } label: {
            Text(buttonModel?.textButton ?? "dummy_text")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(.orange.opacity(0.1))
                .cornerRadius(10)
                .foregroundColor(.orange)
        }.padding(.horizontal, 16)
    }
    
}
