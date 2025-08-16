//
//  HomeTabCustomView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 15/08/25.
//

import SwiftUI

struct CustomTabView<Content: View>: View {
    @Binding var selectedIndex: Int
    let tabs: [TabItem]
    let content: () -> Content
    
    var body: some View {
        VStack(spacing: 0) {
            content()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                ForEach(tabs.indices, id: \.self) { index in
                    Button {
                        selectedIndex = index
                    } label: {
                        VStack {
                            Image(systemName: tabs[index].systemImage)
                            Text(tabs[index].title)
                                .font(.caption)
                        }
                        .foregroundColor(selectedIndex == index ? .orange : .gray)
                        .frame(maxWidth: .infinity)
                    }
                }
            }
            .background(Color(UIColor.systemBackground))
        }
    }
}
