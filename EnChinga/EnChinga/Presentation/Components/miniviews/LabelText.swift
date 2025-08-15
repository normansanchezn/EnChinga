//
//  LabelText.swift
//  EnChinga
//
//  Created by Norman Sanchez on 15/08/25.
//

import SwiftUI

struct LabelText : View {
    var labelText: String
    
    var body: some View {
        Text("\(labelText)")
            .padding(8)
            .font(.system(size: 14))
            .background(Color.yellow)
            .clipShape(Capsule())
    }
}
