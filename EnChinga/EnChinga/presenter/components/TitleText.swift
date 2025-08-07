//
//  TitleText.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct TitleText: View {
    let text: LocalizedStringKey
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
    }
}
