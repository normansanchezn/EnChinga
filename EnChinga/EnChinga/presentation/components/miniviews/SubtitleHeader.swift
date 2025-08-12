//
//  SubtitleHeader.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct SubtitleHeader: View {
    @Binding var subtitle: LocalizedStringKey
    
    var body: some View {
        HStack {
            SubtitleText(text: $subtitle)
                .padding(.horizontal, 16)
            Spacer()
        }.padding(.bottom, 16)
            
    }
}
