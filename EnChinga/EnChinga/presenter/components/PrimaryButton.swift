//
//  PrimaryButton.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct PrimaryButton: View {
    @Binding var buttonModel: ButtonModel?
    
    var body: some View {
        Button() {
            buttonModel?.onButtonClicked?()
        } label: {
            Text(buttonModel?.textButton ?? "dummy_text")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(.orange)
                .cornerRadius(10)
                .foregroundColor(.white)
        }.padding(.horizontal, 16)
    }
}
