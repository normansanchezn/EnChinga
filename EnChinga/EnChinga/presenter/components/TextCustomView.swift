//
//  TextCustomView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct TextCustomView: View {
    @Binding var textModel: TextModel

    var body: some View {
        HStack {
            Text(textModel.text)
                .fixedSize()
                .foregroundColor(textModel.color)
                .fontWeight(textModel.isBold ? .bold : .regular)
            Spacer()
        }.padding(.leading, 20)
    }
}

#Preview {
    @State var textModel: TextModel = TextModel(text: "Hello", color: .blue, isBold: false)
    TextCustomView(textModel: $textModel)
}
