//
//  SignInView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct SignInView: View {
    
    @Environment(Router.self) var router
    
    var signInValue = 1
    @State var signTitle: LocalizedStringKey = "sign_in_title_text"
    @State var signSubtitle: LocalizedStringKey = "sign_in_subtitle_text"
    @State var forgotPasswordText: LocalizedStringKey = "forgot_your_password_text"
    
    @State var emailTextFieldModel = TextFieldModel(
        textFieldValue: "",
        textModel: TextModel(text: "email_text", color: .black, isBold: true),
        hint: "sign_in_email_text",
        keyboardType: .emailAddress
    )
    @State var passwordTextFieldModel = TextFieldModel(
        textFieldValue: "",
        textModel: TextModel(text: "password_text", color: .black, isBold: true),
        hint: "sign_in_password_text",
        keyboardType: .default
    )
    @State var textModel = TextModel(text: "Forgot your password?", color: .orange, isBold: true)
    @State var didYouHaveAnAccountModel = TextModel(text: "Did you have an account?", color: .black, isBold: false)
    @State var signUpHereModel: ButtonModel? = ButtonModel(textButton: "Sign up here.")
    
    @State var buttonModel: ButtonModel? = ButtonModel(textButton: "sign_in_text", onButtonClicked: {
        print("I press sign_in")
    })
    
    @State var forgotPasswordTextButton: LocalizedStringKey = "forgot_your_password_text"
    @State var linkButtonModel : ButtonModel? = ButtonModel(textButton: "forgot_your_password_text")
    
    var body: some View {
        VStack {
            TitleHeader(titleText: $signTitle)
            SubtitleHeader(subtitle: $signSubtitle)
            EditText(textFieldModel: $emailTextFieldModel)
            EditText(textFieldModel: $passwordTextFieldModel).padding(.top, 16)
            
            LinkTextButton(linkButtonModel: $linkButtonModel)
            Spacer()
            PrimaryButton(buttonModel: $buttonModel)
            HStack {
                SimpleText(textModel: $didYouHaveAnAccountModel)
                LinkTextButton(linkButtonModel: $signUpHereModel)
            }.onAppear() {
                linkButtonModel?.onButtonClicked = {
                    router.navigateToForgotPassword()
                }
                signUpHereModel?.onButtonClicked = {
                    router.navigateToSingUp()
                }
            }
        }
    }
}
