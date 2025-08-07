//
//  PagerView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct PagerView: View {
    
    var body: some View {
        Image("welcome_image")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .padding()
        Text("All your favorites foods in one place!")
            .font(.title)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
        Text("Order your favorite foods on-delivery, anytime, anywhere!")
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundStyle(.gray)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    PagerView()
}
