//
//  ViewPager.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct ViewPager: View {
    
    @Binding var pageViewModel: [PageViewModel]

    var body: some View {
        TabView {
            ForEach($pageViewModel) { page in
                PageView(pageModel: page)
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .tint(.orange)
    }
}
