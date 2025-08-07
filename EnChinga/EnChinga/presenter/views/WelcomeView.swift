//
//  ContentView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 06/08/25.
//

import SwiftUI

struct WelcomeView: View {

    @State var buttonModel: ButtonModel? = ButtonModel(textButton: "continue_text", onButtonClicked: {
        print("I press continue")
    })
    @State var secondaryButtonModel: ButtonModel? = ButtonModel(textButton: "sign_up_text", onButtonClicked: {
        print("I press sign up")
    })
    @State var pages: [PageModel] = [
        PageModel(image: "welcome_image", title: "welcome_title_step_one", subtitle: "welcome_subtitle_step_one"),
        PageModel(image: "welcome_image", title: "welcome_title_step_two", subtitle: "welcome_subtitle_step_two")
    ]

        
    var body: some View {
        VStack{
            Spacer()
            ViewPager(pageModel: $pages)
            Spacer()
            PrimaryButton(buttonModel: $buttonModel)
            SecondaryButton(buttonModel: $secondaryButtonModel)
                
        }.padding()
    }
}

func signIn() {
    
}


#Preview { WelcomeView() }
