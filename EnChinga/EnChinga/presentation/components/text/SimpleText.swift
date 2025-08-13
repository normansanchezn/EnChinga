//
//  TextCustomView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct SimpleText: View {
    @Binding var textModel: TextModel

    var body: some View {
        HStack {
            Text(textModel.text)
                .fixedSize()
                .foregroundColor(textModel.color)
                .fontWeight(textModel.isBold ? .bold : .regular)
                .padding(.horizontal, 16)
            Spacer()
        }
    }
}

#Preview {
    @State var textModel: TextModel = TextModel(text: "Hello", color: .blue, isBold: false)
    SimpleText(textModel: $textModel)
}
