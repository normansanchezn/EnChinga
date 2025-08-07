//
//  ContentView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 06/08/25.
//

import SwiftUI

struct WelcomeView: View {

    let pages: [PageModel] = [
        PageModel(image: "welcome_image", title: "welcome_title_step_one", subtitle: "welcome_subtitle_step_one"),
        PageModel(image: "welcome_image", title: "welcome_title_step_two", subtitle: "welcome_subtitle_step_two")
    ]

        
    var body: some View {
        VStack{
            Spacer()
            ViewPager(pageModel: pages)
            Spacer()
            PrimaryButton(primaryButtonText: "continue_txt", onButtonClicked: {
                print("I press continue")
            })
            SecondaryButton(secondaryButtonText: "sign_up_txt", onButtonClicked: {
                print("I press sign up")
            })
                
        }.padding()
    }
}

func signIn() {
    
}


#Preview { WelcomeView() }
