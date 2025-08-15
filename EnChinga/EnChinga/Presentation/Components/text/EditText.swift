//
//  TitleInputText.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct EditText: View {
    @Binding var textFieldModel: TextFieldModel

    var body: some View {
        VStack {
            SimpleText(textModel: $textFieldModel.textModel)
            TextField(textFieldModel.hint, text: $textFieldModel.textFieldValue)
                .keyboardType(textFieldModel.keyboardType)
                .padding(.all, 16)
                .background(.gray.opacity(0.1))
                .cornerRadius(16)
                .padding(.leading, 16)
                .padding(.trailing, 16)
        }
    }
}
