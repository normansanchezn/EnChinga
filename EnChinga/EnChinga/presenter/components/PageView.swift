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
            CircularImage(image: pageModel.image)
            TitleText(text: pageModel.title)
            SubtitleText(text: pageModel.subtitle)
        }
    }
}

/*
 #Preview {
     PageView(pageModel: PageModel(image: "image", title: "Title", subtitle: "Subtitle"))
 }
 
*/
