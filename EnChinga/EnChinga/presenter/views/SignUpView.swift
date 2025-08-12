//
//  SignUpView.swift
//  EnChinga
//
//  Created by Norman Sanchez on 09/08/25.
//

import SwiftUI

public struct SignUpView: View {
    @Environment(Router.self) var router
    
    @State var signUpTitle: LocalizedStringKey = "sign_up_text"
    @State var signUpSubtitle: LocalizedStringKey = "sign_up_subtitle_text"
    @State var textNameFieldModel = TextFieldModel(
        textFieldValue: "",
        textModel: TextModel(text: "name_text", color: .black, isBold: true),
        hint: "name_hint_text",
        keyboardType: .namePhonePad
    )
    @State var textLastNameFieldModel = TextFieldModel(
        textFieldValue: "",
        textModel: TextModel(text: "last_name_text", color: .black, isBold: true),
        hint: "last_name_hint_text",
        keyboardType: .namePhonePad
    )
    @State var textEmailFieldModel = TextFieldModel(
        textFieldValue: "",
        textModel: TextModel(text: "email_text", color: .black, isBold: true),
        hint: "email_hint_text",
        keyboardType: .namePhonePad
    )
    @State var textPhoneNumberFieldModel = TextFieldModel(
        textFieldValue: "",
        textModel: TextModel(text: "phone_text", color: .black, isBold: true),
        hint: "phone_hint_text",
        keyboardType: .namePhonePad
    )
    @State var textAddressNumberFieldModel = TextFieldModel(
        textFieldValue: "",
        textModel: TextModel(text: "address_text", color: .black, isBold: true),
        hint: "address_hint_text",
        keyboardType: .namePhonePad
    )
    @State var textPasswordNumberFieldModel = TextFieldModel(
        textFieldValue: "",
        textModel: TextModel(text: "password_text", color: .black, isBold: true),
        hint: "password_hint_text",
        keyboardType: .namePhonePad
    )
    @State var buttonModel: ButtonModel? = ButtonModel(textButton: "sign_in_text")
    @State var textModel = TextModel(text: "Have an account?", color: .gray, isBold: false)
    
    public var body: some View {
        ScrollView {
            TitleHeader(titleText: $signUpTitle)
            HStack {
                SubtitleText(text: $signUpSubtitle)
                Spacer()
            }.padding(.horizontal, 16).padding(.bottom, 16)
            TextFieldCustom(textFieldModel: $textNameFieldModel)
            TextFieldCustom(textFieldModel: $textLastNameFieldModel).padding(.top, 16)
            TextFieldCustom(textFieldModel: $textEmailFieldModel).padding(.top, 16)
            TextFieldCustom(textFieldModel: $textPhoneNumberFieldModel).padding(.top, 16)
            TextFieldCustom(textFieldModel: $textAddressNumberFieldModel).padding(.top, 16)
            TextFieldCustom(textFieldModel: $textPasswordNumberFieldModel).padding(.top, 16)
            PrimaryButton(buttonModel: $buttonModel).padding(.top, 32)
            HStack {
                Spacer()
                TextCustomView(
                    textModel: $textModel
                )
                NavigationLink(destination: SignInView()) {
                    Text("sign_in_text").foregroundColor(.blue)
                }.padding(.trailing, 16)
                Spacer()

            }
            .padding(.bottom, 16)
            .onAppear() {
                buttonModel?.onButtonClicked = {
                    self.goToValidateOTP()
                }
            }
        }
    }
    
    func goToValidateOTP() {
        router.navigateToValidateOTPScreen()
    }
}

#Preview {
    SignUpView()
}
