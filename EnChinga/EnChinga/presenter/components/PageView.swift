//
//  PagerView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct PageView: View {
    var pageModel: PageModel
    
    var body: some View {
        VStack {
            Image(pageModel.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .padding()
            Text(pageModel.title)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text(pageModel.subtitle)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    PageView(pageModel: PageModel(image: "image", title: "Title", subtitle: "Subtitle"))
}
