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
    @State var pages: [PageViewModel] = [
        PageViewModel(pageType: PageType.fristPage),
        PageViewModel(pageType: PageType.secondPage)
    ]
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                ViewPager(pageViewModel: $pages)
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
    
    func navigateToCongratsScreen() {
        router.navigateToCongratsScreen()
    }
    
    func signIn() {
        router.navigateToSignIn()
    }
    
    func signUp() {
        router.navigateToSingUp()
    }
}
