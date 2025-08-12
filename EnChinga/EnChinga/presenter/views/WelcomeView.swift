//
//  ContentView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 06/08/25.
//

import SwiftUI

struct WelcomeView: View {
    
    @Environment(Router.self) var router
    
    @State var buttonModel: ButtonModel? = ButtonModel(textButton: "continue_text")
    @State var secondaryButtonModel: ButtonModel? = ButtonModel(textButton: "sign_up_text")
    @State var pages: [PageModel] = [
        PageModel(image: "welcome_image", title: "welcome_title_step_one", subtitle: "welcome_subtitle_step_one"),
        PageModel(image: "welcome_image", title: "welcome_title_step_two", subtitle: "welcome_subtitle_step_two")
    ]
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                ViewPager(pageModel: $pages)
                Spacer()
                
                PrimaryButton(buttonModel: $buttonModel)
                SecondaryButton(buttonModel: $secondaryButtonModel)
                
            }
            .padding()
            .onAppear {
                buttonModel?.onButtonClicked = { self.signIn() }
                secondaryButtonModel?.onButtonClicked = { self.signUp() }
            }
        }
        
    }
    
    func signIn() {
        router.navigateToSignIn()
    }
    
    func signUp() {
        router.navigateToSingUp()
    }
}

#Preview { WelcomeView() }
