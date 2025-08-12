//
//  SignInView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 07/08/25.
//

import SwiftUI

struct SignInView: View {
    
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
    @State var signUpHereModel = TextModel(text: "Sign up here.", color: .orange, isBold: true)
    
    @State var buttonModel: ButtonModel? = ButtonModel(textButton: "sign_in_text", onButtonClicked: {
        print("I press sign_in")
    })
    
    var body: some View {
        VStack {
            TitleHeader(titleText: $signTitle)
            SubtitleHeader(subtitle: $signSubtitle)
            TextFieldCustom(textFieldModel: $emailTextFieldModel)
            TextFieldCustom(textFieldModel: $passwordTextFieldModel).padding(.top, 16)
            TextCustomView(textModel: $textModel)
            Spacer()
            PrimaryButton(buttonModel: $buttonModel)
            HStack {
                TextCustomView(textModel: $didYouHaveAnAccountModel)
                TextCustomView(textModel: $signUpHereModel)
                    .padding(.trailing, 12)
            }.padding([.leading, .bottom, .trailing], 20)
        }
    }
}

#Preview {
    SignInView()
}
