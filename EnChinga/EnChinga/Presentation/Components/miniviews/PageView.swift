//
//  PagerView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct PageView: View {
    @Binding var pageModel: PageViewModel
    
    var body: some View {
        VStack {
            CircularImage(image: pageModel.pageType.image)
                .padding(.horizontal, 20)
            TitleText(text: pageModel.pageType.title)
            SubtitleText(text: pageModel.pageType.subtitle)
        }
    }
}
