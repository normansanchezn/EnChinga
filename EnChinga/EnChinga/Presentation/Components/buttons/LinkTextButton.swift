//
//  LinkTextButton.swift
//  EnChinga
//
//  Created by Norman Sanchez on 12/08/25.
//

import SwiftUI

public struct LinkTextButton: View {
    @Binding var linkButtonModel: ButtonModel?
    
    public var body: some View {
        Button {
            linkButtonModel?.onButtonClicked?()
        } label: {
            Text(linkButtonModel?.textButton ?? "dummy_text")
        }.tint(.orange).bold()
            .padding()
    }
}
