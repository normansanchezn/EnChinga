//
//  ViewPager.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct ViewPager: View {
    
    @Binding var pageModel: [PageModel]

    var body: some View {
        TabView {
            ForEach($pageModel) { page in
                PageView(pageModel: page)
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .tint(.orange)
    }
}
