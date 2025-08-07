//
//  SubtitleText.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//
import SwiftUI

struct SubtitleText: View {
    let text: LocalizedStringKey
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundStyle(.gray)
            .multilineTextAlignment(.center)
    }
}
