//
//  TitleHeader.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct TitleHeader: View {
    @Binding var titleText: LocalizedStringKey
    
    var body: some View {
        HStack {
            TitleText(text: titleText)
                .padding(.horizontal, 16)
                .padding(.top, 16)
            Spacer()
        }
    }
}
