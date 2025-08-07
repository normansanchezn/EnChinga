//
//  TitleInputText.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct TextFieldCustom: View {
    @Binding var textFieldModel: TextFieldModel

    var body: some View {
        VStack {
            TextCustomView(textModel: $textFieldModel.textModel)
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

#Preview {
    @State var textFieldModel = TextFieldModel(
        textFieldValue: "",
        textModel: TextModel(text: "dummy_text", color: .orange, isBold: true),
        hint: "dummy_text",
        keyboardType: .default
    )
    TextFieldCustom(textFieldModel: $textFieldModel)
}
