//
//  ContentView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 06/08/25.
//

import SwiftUI

struct ContentView: View {

    let pages: [PageModel] = [
        PageModel(image: "welcome_image", title: "welcome_title_step_one", subtitle: "welcome_subtitle_step_one"),
        PageModel(image: "welcome_image", title: "welcome_title_step_two", subtitle: "welcome_subtitle_step_two")
    ]

        
    var body: some View {
        VStack{
            Spacer()
            ViewPager(pageModel: pages)
            Spacer()
            Button(action: signIn) {
                Text("Continue")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }.padding(.horizontal, 16)
            Button(action: signIn) {
                Text("Sign in")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(.orange.opacity(0.1))
                    .cornerRadius(10)
                    .foregroundColor(.orange)
            }.padding(.horizontal, 16)
                
        }.padding()
    }
}

func signIn() {
    
}

#Preview {
    ContentView()
}
